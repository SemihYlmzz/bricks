import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../{{name}}.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final {{name.camelCase()}}BlocListeners = {{name.pascalCase()}}BlocListeners();
  
    return BlocProvider(
      create: (context) => {{name.pascalCase()}}Bloc(),
      child: MultiBlocListener(
        listeners: [
          {{name.camelCase()}}BlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const {{name.pascalCase()}}View(),
            );
          },
        ),
      ),
    );
  }
}
