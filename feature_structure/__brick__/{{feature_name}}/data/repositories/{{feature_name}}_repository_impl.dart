import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/data/datasources/remote/{{feature_name.snakeCase()}}_remote_datasource.dart';
import 'package:{{project_name}}/core/core.dart';

class {{ feature_name.pascalCase() }}RepositoryImpl implements {{ feature_name.pascalCase() }}Repository {

  const {{ feature_name.pascalCase() }}RepositoryImpl({
    required this.{{ feature_name.camelCase() }}RemoteDataSource,
  });

  final {{ feature_name.pascalCase() }}RemoteDataSource {{ feature_name.camelCase() }}RemoteDataSource;

  @override
  Future<Either<Failure, void>> fetchData() async {
    final Either<Failure, void> result = await {{ feature_name.camelCase() }}RemoteDataSource.fetchData();
    return result.fold(
      (failure) => Left(failure),
      (_) => Right(null),
    );
  }
  
}