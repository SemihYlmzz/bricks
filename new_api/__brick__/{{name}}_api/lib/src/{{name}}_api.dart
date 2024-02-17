import 'package:{{name}}_api/{{name}}_api.dart';

abstract class {{name.pascalCase()}}Api {
  const {{name.pascalCase()}}Api();
  Future<void> doSomething();
}
