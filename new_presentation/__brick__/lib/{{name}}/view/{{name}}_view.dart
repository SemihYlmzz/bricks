import 'package:flutter/material.dart';

import '../{{name}}.dart';

class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const {{name.pascalCase()}}AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('{{name.titleCase()}} Button'),
            ),
          ),
        ],
      ),
    );
  }
}
