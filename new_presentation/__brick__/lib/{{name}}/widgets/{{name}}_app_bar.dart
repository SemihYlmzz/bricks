import 'package:flutter/material.dart';
import '../sign_up.dart';

class {{name.pascalCase()}}AppBar extends StatelessWidget implements PreferredSizeWidget {
  const {{name.pascalCase()}}AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(context.{{name.camelCase()}}Localization.appBarTitle),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
