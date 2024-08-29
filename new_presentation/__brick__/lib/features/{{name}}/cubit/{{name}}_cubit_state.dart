part of '{{name}}_cubit.dart';

@freezed
class {{name.pascalCase()}}CubitState with _${{name.pascalCase()}}CubitState {
  const factory {{name.pascalCase()}}CubitState({
    @Default(false) bool isErrorsVisible,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _{{name.pascalCase()}}CubitState;
}
