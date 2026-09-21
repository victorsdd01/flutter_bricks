import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/core/errors/failures.dart';
import '../../domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import '../datasources/remote/{{feature_name.snakeCase()}}_remote_datasource.dart';

class {{feature_name.pascalCase()}}RepositoryImpl
    implements {{feature_name.pascalCase()}}Repository {
  const {{feature_name.pascalCase()}}RepositoryImpl({
    required this.{{feature_name.camelCase()}}RemoteDataSource,
  });

  final {{feature_name.pascalCase()}}RemoteDataSource {{feature_name.camelCase()}}RemoteDataSource;

  @override
  Future<Either<Failure, void>> fetchData() =>
      {{feature_name.camelCase()}}RemoteDataSource.fetchData();
}
