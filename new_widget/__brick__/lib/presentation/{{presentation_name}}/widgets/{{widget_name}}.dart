import 'package:flutter/material.dart';

class {{widget_name.pascalCase()}} extends StatelessWidget {
  const {{widget_name.pascalCase()}} ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.add),
      title: const Text('{{widget_name.titleCase()}}'),
      subtitle: const Text('Maded for {{widget_name.titleCase()}} widget.'),
      trailing: Icon(Icons.adaptive.arrow_forward),
      onTap: () {},
    );
  }
}
