import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodel/e_track_viewmodel.dart';

class ETrackPage extends ConsumerWidget {
  const ETrackPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(eTrackProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary,
        title:
      
       const Text("ETrack Page",style: TextStyle(
        color: Colors.white
       ),)),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
              color: AppColors.primary
            ),
          )
        ],
      )
    );
  }
}
