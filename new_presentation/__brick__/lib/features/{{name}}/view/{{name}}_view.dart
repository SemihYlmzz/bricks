import 'package:flutter/material.dart';

import '../../../app/app.dart';
import '../{{name}}.dart';

class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: const {{name.pascalCase()}}AppBar(),
      body: BaseColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(context.{{name.camelCase()}}Localization.buttonName),
            ),
          ),
        ],
      ),
    );
  }
}
