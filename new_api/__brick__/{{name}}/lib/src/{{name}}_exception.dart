import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:app_name/errors/errors.dart';

part '{{name}}_exception.freezed.dart';

@freezed
sealed class {{name.pascalCase()}}Exception
    with _${{name.pascalCase()}}Exception
    implements Failure {
  const factory {{name.pascalCase()}}Exception.unknown() =
      {{name.pascalCase()}}ExceptionUnknown;
}
