part of '{{name}}_bloc.dart';

@freezed
sealed class {{name.pascalCase()}}Event with _${{name.pascalCase()}}Event {
  const factory {{name.pascalCase()}}Event.fetch() = {{name.pascalCase()}}Fetch;
}
