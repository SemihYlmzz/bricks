import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../{{name}}.dart';

class {{name.pascalCase()}}Router {
  factory {{name.pascalCase()}}Router() {
    return instance;
  }
  {{name.pascalCase()}}Router._();
  static final {{name.pascalCase()}}Router instance = {{name.pascalCase()}}Router._();

  static const String _path = '/{{name}}';
  static const String _name = '{{name}}';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const MaterialPage(
          child: {{name.pascalCase()}}Screen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }
}
