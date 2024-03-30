import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../errors/errors.dart';
import '../{{name}}.dart';

extension {{name.pascalCase()}}ErrorDisplayer on {{name.pascalCase()}}BlocListeners {
  BlocListener<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>
      errorDisplayer() {
    return BlocListener(
      listener: (context, state) {
        final failure = state.failure;
        
        if (errorMessage == null || !context.mounted) {
          return;
        }

        final errorMessage = FailureLocalizor.localize(failure, context);

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
