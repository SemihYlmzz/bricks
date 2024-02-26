import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_switch/presentation/presentation.dart';

import '../../../common/modals/modals.dart';

BlocListener<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>
    {{name}}errorDisplayer() {
  return BlocListener<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
    listener: (context, state) {
      final errorMessage = state.errorMessage;
      if (errorMessage == null) {
        return;
      }
      ErrorSnackbars.showSnackBar(context, errorMessage);
         },
  );
}
