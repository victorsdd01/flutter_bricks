{{#include_bloc}}import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:{{project_name}}/core/errors/failures.dart';
import '../../../domain/use_cases/{{feature_name.snakeCase()}}_use_cases.dart';

part '{{bloc_name.snakeCase()}}_bloc.freezed.dart';
part '{{bloc_name.snakeCase()}}_bloc.g.dart';
part '{{bloc_name.snakeCase()}}_event.dart';
part '{{bloc_name.snakeCase()}}_state.dart';

class {{bloc_name.pascalCase()}}Bloc
    extends HydratedBloc<{{bloc_name.pascalCase()}}Event, {{bloc_name.pascalCase()}}State> {
  {{bloc_name.pascalCase()}}Bloc({
    required {{feature_name.pascalCase()}}UseCases {{feature_name.camelCase()}}UseCases,
  })  : _{{feature_name.camelCase()}}UseCases = {{feature_name.camelCase()}}UseCases,
        super(const {{bloc_name.pascalCase()}}State()) {
    on<_SomeEvent>(_onSomeEvent);
  }

  final {{feature_name.pascalCase()}}UseCases _{{feature_name.camelCase()}}UseCases;

  Future<void> _onSomeEvent(
    _SomeEvent event,
    Emitter<{{bloc_name.pascalCase()}}State> emit,
  ) async {
    final Either<Failure, void> result =
        await _{{feature_name.camelCase()}}UseCases.fetchData();
    result.fold(
      (Failure failure) => emit(state.copyWith(failure: failure)),
      (_) => emit(state.copyWith(status: {{bloc_name.pascalCase()}}Status.none)),
    );
  }

  @override
  {{bloc_name.pascalCase()}}State? fromJson(Map<String, dynamic> json) =>
      {{bloc_name.pascalCase()}}State.fromJson(json);

  @override
  Map<String, dynamic>? toJson({{bloc_name.pascalCase()}}State state) => state.toJson();
}
{{/include_bloc}}
