import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../presentation.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{name.pascalCase()}}Bloc(),
      child: MultiBlocListener(
        listeners:[
          {{name}}errorDisplayer(),
        ],
        child: Builder(
              builder: (context) {
                final isLoading = context.select(
                  ({{name.pascalCase()}}Bloc bloc) => bloc.state.isLoading,
                );
                return LoadingScreen(
                  isLoading: isLoading,
                  size: MediaQuery.sizeOf(context),
                  child: const {{name.pascalCase()}}View(),
                );
              },
            ),
      ),
    );
  }
}
