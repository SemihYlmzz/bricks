import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../{{name}}.dart';

class {{name.pascalCase()}}GoRoute extends GoRoute {
  factory {{name.pascalCase()}}GoRoute() {
    return instance;
  }
  {{name.pascalCase()}}GoRoute._()
      : super(path: _path, name: _name, pageBuilder: _pageBuilder);

  static final {{name.pascalCase()}}GoRoute instance = {{name.pascalCase()}}GoRoute._();

  static const String _path = '/{{name}}';
  static const String _name = '{{name}}';

  static GoRouterPageBuilder get _pageBuilder => 
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
