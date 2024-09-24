import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../{{name}}.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return ChangeNotifierProvider(
      create: (context) => {{name.pascalCase()}}ViewModel(),
      child: Builder(
        builder: (context) {
          final viewModel = context.read<ToyDetailViewModel>();
          viewModel.connectIsLoadingWithApp(context);
          viewModel.connectAppFailureWithApp(context);
          return {{name.pascalCase()}}View();
        },
      ),
    );
  }
}
