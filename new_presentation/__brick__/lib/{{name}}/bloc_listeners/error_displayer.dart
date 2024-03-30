import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../{{name}}.dart';

extension {{name.pascalCase()}}ErrorDisplayer on {{name.pascalCase()}}BlocListeners {
  BlocListener<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>
      errorDisplayer() {
    return BlocListener(
      listener: (context, state) {
        final errorMessage = state.errorMessage;
        if (errorMessage == null) {
          return;
        }
        ScaffoldMessenger.of(context)
          ..clearSnackBars()
          ..showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
          );
      },
    );
  }
}
