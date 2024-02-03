import 'package:riverpod_annotation/riverpod_annotation.dart';

part '{{name}}_controller.g.dart';

@riverpod
class {{name.pascalCase()}}Controller extends _${{name.pascalCase()}}Controller {
  @override
  FutureOr<void> build() async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 5));
    state = const AsyncData(null);
  }

  Future<void> load() async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 2));
    state = const AsyncData(null);
  }
}
