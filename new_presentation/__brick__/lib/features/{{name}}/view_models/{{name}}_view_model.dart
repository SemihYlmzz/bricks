import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../app/app.dart';

class {{name.pascalCase()}}ViewModel with ChangeNotifier {
  {{name.pascalCase()}}ViewModel() {
    _init();
  }
  late ValueNotifier<bool> _isAppLoading;
  late ValueNotifier<Failure?> _appFailure;

  void _init() async {
    _isAppLoading = ValueNotifier<bool>(false);
    _appFailure = ValueNotifier<Failure?>(null);
  }

  @override
  void dispose() {
    _isAppLoading.dispose();
    _appFailure.dispose();
    super.dispose();
  }
}

extension {{name.pascalCase()}}ViewModelListeners on {{name.pascalCase()}}ViewModel {
  void connectIsLoadingWithApp(BuildContext context) =>
      _isAppLoading.addListener(
        () {
          context.read<AppViewModel>().toggleIsLoading(_isAppLoading.value);
        },
      );
  void connectAppFailureWithApp(BuildContext context) =>
      _isAppLoading.addListener(
        () {
          final appFailureValue = _appFailure.value;
          if (appFailureValue == null) return;
          context.read<AppViewModel>().setSnackbarFailure(appFailureValue);
          _appFailure.value = null;
        },
      );
}
