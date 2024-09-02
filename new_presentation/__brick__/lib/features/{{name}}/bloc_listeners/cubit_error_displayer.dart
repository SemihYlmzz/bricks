import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../app/app.dart';
import '../{{name}}.dart';

extension {{name.pascalCase()}}CubitErrorDisplayer on {{name.pascalCase()}}BlocListeners {
  BlocListener<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}CubitState>
      cubitErrorDisplayer() {
    return BlocListener(
      listener: (context, state) {
        final failure = state.failure;
        
        if (failure == null || !context.mounted) {
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
