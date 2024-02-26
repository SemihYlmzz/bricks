import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_switch/presentation/presentation.dart';

import '../../../common/modals/modals.dart';

extension ErrorDisplayer on {{name.pascalCase()}}BlocListeners {
  BlocListener<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>
      errorDisplayer() {
    return BlocListener(
      listener: (context, state) {
        final errorMessage = state.errorMessage;
        if (errorMessage == null) {
          return;
        }
        ErrorSnackbars.showSnackBar(context, errorMessage);
      },
    );
  }
}
