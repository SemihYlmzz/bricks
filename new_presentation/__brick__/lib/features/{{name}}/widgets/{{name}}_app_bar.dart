import 'package:flutter/material.dart';
import '../{{name}}.dart';

class {{name.pascalCase()}}AppBar extends StatelessWidget implements PreferredSizeWidget {
  const {{name.pascalCase()}}AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(context.{{name.camelCase()}}Localization.{{name.camelCase()}}),
      centerTitle: true,
      forceMaterialTransparency: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
