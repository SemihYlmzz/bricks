import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shared_widgets/shared_widgets.dart';
import '../../presentation.dart';

class {{name.pascalCase()}}Screen extends ConsumerWidget {
  const {{name.pascalCase()}}Screen({super.key});
  static const String path = '/{{name}}';
  static const String name = '{{name}}';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<void> state = ref.watch({{name.camelCase()}}ControllerProvider);
    return LoadingScreen(
      isLoading: state.isLoading,
      size: MediaQuery.sizeOf(context),
      child: const {{name.pascalCase()}}View(),
    );
  }
}
