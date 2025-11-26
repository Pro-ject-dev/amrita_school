import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print("❌ Please provide a feature name");
    print("Example: dart run tool/mvvm_generator.dart login");
    exit(0);
  }

  final name = args.first.toLowerCase();
  final pascal = toPascal(name);
  final camel = toCamel(name);
  final snake = name.toLowerCase();

  final base = "lib/core/features/$snake";

  final structure = [
    "$base/data/models",
    "$base/data/source",
    "$base/data/repository",
    "$base/domain/entities",
    "$base/domain/usecases",
    "$base/presentation/viewmodel",
    "$base/presentation/view",
    "$base/presentation/widgets",
  ];

  for (final dir in structure) {
    Directory(dir).createSync(recursive: true);
  }

  // ENTITY (PLAIN CLASS)
  File("$base/domain/entities/${snake}_entity.dart").writeAsStringSync("""
class ${pascal}Entity {
  final String value;

  const ${pascal}Entity({
    required this.value,
  });
}
""");

  // MODEL (FREEZED + JSON SERIALIZABLE)
  File("$base/data/models/${snake}_model.dart").writeAsStringSync("""
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/${snake}_entity.dart';

part '${snake}_model.freezed.dart';
part '${snake}_model.g.dart';

@freezed
class ${pascal}Model with _\$${pascal}Model {
  const factory ${pascal}Model({
    required String value,
  }) = _${pascal}Model;

  factory ${pascal}Model.fromJson(Map<String, dynamic> json) =>
      _\$${pascal}ModelFromJson(json);

  ${pascal}Entity toEntity() => ${pascal}Entity(value: value);
}
""");

  // REMOTE SOURCE
  File("$base/data/source/${snake}_remote_source.dart").writeAsStringSync("""
class ${pascal}RemoteSource {
  Future<String> fetchValue() async {
    await Future.delayed(const Duration(milliseconds: 400));
    return "Fetched value from API";
  }
}
""");

  // REPOSITORY
  File("$base/data/repository/${snake}_repository.dart").writeAsStringSync("""
import '../source/${snake}_remote_source.dart';
import '../models/${snake}_model.dart';
import '../../domain/entities/${snake}_entity.dart';

class ${pascal}Repository {
  final ${pascal}RemoteSource _source = ${pascal}RemoteSource();

  Future<${pascal}Entity> fetchData() async {
    final result = await _source.fetchValue();
    return ${pascal}Model(value: result).toEntity();
  }
}
""");

  // USECASE
  File("$base/domain/usecases/${snake}_usecase.dart").writeAsStringSync("""
import '../../data/repository/${snake}_repository.dart';
import '../entities/${snake}_entity.dart';

class ${pascal}UseCase {
  final ${pascal}Repository _repo = ${pascal}Repository();

  Future<${pascal}Entity> execute() async {
    return await _repo.fetchData();
  }
}
""");

  // STATE (FREEZED)
  File("$base/presentation/viewmodel/${snake}_state.dart").writeAsStringSync("""
import 'package:freezed_annotation/freezed_annotation.dart';

part '${snake}_state.freezed.dart';

@freezed
class ${pascal}State with _\$${pascal}State {
  const factory ${pascal}State({
    required bool isLoading,
    required String data,
    String? error,
  }) = _${pascal}State;

  factory ${pascal}State.initial() => const ${pascal}State(
        isLoading: false,
        data: "",
      );
}
""");

  // VIEWMODEL
  File("$base/presentation/viewmodel/${snake}_viewmodel.dart")
      .writeAsStringSync("""
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '${snake}_state.dart';
import '../../domain/usecases/${snake}_usecase.dart';

class ${pascal}ViewModel extends StateNotifier<${pascal}State> {
  final ${pascal}UseCase _useCase = ${pascal}UseCase();

  ${pascal}ViewModel() : super(${pascal}State.initial());

  Future<void> load() async {
    state = state.copyWith(isLoading: true);

    try {
      final result = await _useCase.execute();
      state = state.copyWith(isLoading: false, data: result.value);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final ${camel}Provider =
    StateNotifierProvider<${pascal}ViewModel, ${pascal}State>(
  (ref) => ${pascal}ViewModel(),
);
""");

  // VIEW
  File("$base/presentation/view/${snake}_page.dart").writeAsStringSync("""
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodel/${snake}_viewmodel.dart';

class ${pascal}Page extends ConsumerWidget {
  const ${pascal}Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(${camel}Provider);

    return Scaffold(
      appBar: AppBar(title: const Text("$pascal Page")),
      body: Center(
        child: state.isLoading
            ? const CircularProgressIndicator()
            : Text(state.data),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(${camel}Provider.notifier).load(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
""");

  print("✅ MVVM + PLAIN ENTITY + FREEZED MODEL + RIVERPOD template generated for '$name'");
}

String toPascal(String input) =>
    input.split('_').map((e) => e[0].toUpperCase() + e.substring(1)).join();

String toCamel(String input) {
  final p = toPascal(input);
  return p[0].toLowerCase() + p.substring(1);
}
