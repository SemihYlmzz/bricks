import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../app/app.dart';

part '{{name}}_bloc.freezed.dart';
part '{{name}}_event.dart';
part '{{name}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super(const {{name.pascalCase()}}State()) {
    on<{{name.pascalCase()}}Event>(_on{{name.pascalCase()}}Event);
  }
  
  Future<void> _on{{name.pascalCase()}}Event(
    {{name.pascalCase()}}Event event,
    Emitter<{{name.pascalCase()}}State> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    
    await event.map(
      fetch: (e) async {},
  );
    
    emit(state.copyWith(isLoading: false, failure: null));
  }
}
