sealed class {{name.pascalCase()}}Exception implements Exception {
  const {{name.pascalCase()}}Exception();
}

class {{name.pascalCase()}}Unknown extends {{name.pascalCase()}}Exception {}
