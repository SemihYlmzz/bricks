import 'package:flutter/material.dart';
import '../../l10n/l10n.dart';

extension {{name.pascalCase()}}LocalizationExtension on BuildContext {
  {{name.pascalCase()}}Localization get {{name.camelCase()}}Localization {
    return {{name.pascalCase()}}Localization(this);
  }
}

class {{name.pascalCase()}}Localization {
  const {{name.pascalCase()}}Localization(this.context);
  final BuildContext context;

  // "buttonName": "{{name.titleCase()}} Button",
  String get buttonName => '{{name.titleCase()}} Button';

  // "appBarTitle": "{{name.titleCase()}} Screen",
  String get appBarTitle => '{{name.titleCase()}} Screen';
}
