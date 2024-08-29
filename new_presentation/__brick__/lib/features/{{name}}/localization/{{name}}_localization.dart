import 'package:flutter/material.dart';

extension {{name.pascalCase()}}LocalizationExtension on BuildContext {
  {{name.pascalCase()}}Localization get {{name.camelCase()}}Localization {
    return {{name.pascalCase()}}Localization(this);
  }
}

class {{name.pascalCase()}}Localization {
  const {{name.pascalCase()}}Localization(this.context);
  final BuildContext context;

  //  "buttonName": "{{name.titleCase()}} Button",
  String get buttonName => '{{name.titleCase()}} Button';

  //  "appBarTitle": "{{name.titleCase()}}",
  String get appBarTitle => '{{name.titleCase()}}';
}
