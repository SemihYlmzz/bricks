import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name}}_state.freezed.dart';
part '{{name}}_state.g.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State({
    required int counterValue,
  }) = _{{name.pascalCase()}}State;

  factory {{name.pascalCase()}}State.fromJson(Map<String, Object?> json) => _${{name.pascalCase()}}StateFromJson(
        json,
      );
}
