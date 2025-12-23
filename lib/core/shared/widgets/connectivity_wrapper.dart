import 'package:amrita_vidhyalayam_teacher/core/providers/connectivity_provider.dart';
import 'package:amrita_vidhyalayam_teacher/core/shared/widgets/no_internet_dialog.dart';
import 'package:amrita_vidhyalayam_teacher/main.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConnectivityWrapper extends ConsumerStatefulWidget {
  final Widget child;

  const ConnectivityWrapper({super.key, required this.child});

  @override
  ConsumerState<ConnectivityWrapper> createState() => _ConnectivityWrapperState();
}

class _ConnectivityWrapperState extends ConsumerState<ConnectivityWrapper> {
  bool _isDialogShown = false;

  @override
  Widget build(BuildContext context) {
    ref.listen(connectivityStatusProvider, (previous, next) {
      next.whenData((results) {
         final isOffline = results.contains(ConnectivityResult.none) && results.length == 1; // Basic check: only "none" means offline.
         // Actually, if it contains "none" it might just be one interface down, but usually [none] is returned when no connection.
         // Better check: !results.any((element) => element != ConnectivityResult.none)
         final hasConnection = results.any((element) => element != ConnectivityResult.none);

        if (!hasConnection && !_isDialogShown) {
          _isDialogShown = true;
          showDialog(
            context: navigatorKey.currentContext!,
            barrierDismissible: false,
            builder: (context) => const NoInternetDialog(),
          ).then((_) {
             _isDialogShown = false;
          });
        } else if (hasConnection && _isDialogShown) {
           // Close the dialog if it's open
           if (navigatorKey.currentContext != null && Navigator.canPop(navigatorKey.currentContext!)) {
             Navigator.of(navigatorKey.currentContext!).pop();
             _isDialogShown = false;
           }
        }
      });
    });

    return widget.child;
  }
}
