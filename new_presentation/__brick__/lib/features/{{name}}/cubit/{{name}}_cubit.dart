import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app/app.dart';

part '{{name}}_cubit.freezed.dart';
part '{{name}}_cubit_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}CubitState> {
  {{name.pascalCase()}}Cubit() : super(const {{name.pascalCase()}}CubitState());

  void makeErrorsVisible() {
    emit(state.copyWith(isErrorsVisible: true));
  }
}
