import 'package:{{project_name}}/shared/shared.dart';
import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/features/{{bloc_name.snakeCase()}}/domain/use_cases/{{bloc_name.snakeCase()}}_use_cases.dart';

part '{{bloc_name.snakeCase()}}_bloc.g.dart';
part '{{bloc_name.snakeCase()}}_bloc.freezed.dart';
part '{{bloc_name.snakeCase()}}_event.dart';
part '{{bloc_name.snakeCase()}}_state.dart';

class {{bloc_name.pascalCase()}}Bloc extends HydratedBloc<{{bloc_name.pascalCase()}}Event, {{bloc_name.pascalCase()}}State> {

  final {{bloc_name.pascalCase()}}UseCases _{{bloc_name.camelCase()}}UseCases;

  {{bloc_name.pascalCase()}}Bloc({required {{bloc_name.pascalCase()}}UseCases {{bloc_name.camelCase()}}UseCases}) 
    : _{{bloc_name.camelCase()}}UseCases = {{bloc_name.camelCase()}}UseCases, super(const {{bloc_name.pascalCase()}}State()) {
    on<{{bloc_name.pascalCase()}}Event>(({{bloc_name.pascalCase()}}Event event, Emitter<{{bloc_name.pascalCase()}}State> emit) async {
      switch (event) {
         case _SomeEvent():
          {
            final Either<Failure, void> result = await _{{bloc_name.camelCase()}}UseCases.fetchData();
            result.fold(
              (Failure failure) => emit(state.copyWith(failure: failure)),
              (_) {
                emit(state.copyWith(
                  status: {{bloc_name.pascalCase()}}Status.NONE,
                ));
              },
            );
            break;
          }
      }
    });
  }

  @override
  {{bloc_name.pascalCase()}}State? fromJson(Map<String, dynamic> json) {
    return {{bloc_name.pascalCase()}}State.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson({{bloc_name.pascalCase()}}State state) {
    return state.toJson(state);
  }
}
