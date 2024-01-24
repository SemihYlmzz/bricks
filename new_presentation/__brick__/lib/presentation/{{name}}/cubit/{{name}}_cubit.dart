import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit() : super(const {{name.pascalCase()}}State(counterValue: 0));
  void increaseCounterValue() {
    final newCounterValue = state.counterValue + 1;
    emit(state.copyWith(counterValue: newCounterValue));
  }

  void decreaseCounterValue() {
    final newCounterValue = state.counterValue - 1;
    emit(state.copyWith(counterValue: newCounterValue));
  }
}
