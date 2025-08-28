
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import 'package:{{project_name}}/core/core.dart';


class {{ feature_name.pascalCase() }}UseCases {
  
  const {{ feature_name.pascalCase() }}UseCases({
  required {{ feature_name.pascalCase() }}Repository repository,
  }) : _{{ feature_name.camelCase() }}Repository = repository;

  final {{ feature_name.pascalCase() }}Repository _{{ feature_name.camelCase() }}Repository;

  Future<Either<Failure, void>> fetchData() async {
    return await _{{ feature_name.camelCase() }}Repository.fetchData();
  }
}