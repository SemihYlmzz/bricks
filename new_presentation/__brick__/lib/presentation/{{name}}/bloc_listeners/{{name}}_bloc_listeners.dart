class {{name.pascalCase()}}BlocListeners {
  factory {{name.pascalCase()}}BlocListeners() {
    return _instance;
  }

  {{name.pascalCase()}}BlocListeners._internal();
  static final {{name.pascalCase()}}BlocListeners _instance =
      {{name.pascalCase()}}BlocListeners._internal();
}
