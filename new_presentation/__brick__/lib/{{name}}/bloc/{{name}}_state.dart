part of '{{name}}_bloc.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
   const factory {{name.pascalCase()}}State({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _{{name.pascalCase()}}State;
}
