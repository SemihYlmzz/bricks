import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../{{name}}.dart';

class {{name.pascalCase()}}Router extends GoRoute {
  factory {{name.pascalCase()}}Router() {
    return instance;
  }
  {{name.pascalCase()}}Router._()
      : super(path: _path, name: _name, pageBuilder: _pageBuilder);

  static final {{name.pascalCase()}}Router instance = {{name.pascalCase()}}Router._();

  static const String _path = '/{{name}}';
  static const String _name = '{{name}}';

  static GoRouterPageBuilder get _pageBuilder => pageBuilder: 
      (context, state) => const MaterialPage(
          child: {{name.pascalCase()}}Screen(),
        );

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }
}
