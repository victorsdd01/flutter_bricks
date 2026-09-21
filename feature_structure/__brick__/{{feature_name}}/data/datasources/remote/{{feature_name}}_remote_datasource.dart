import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/core/errors/failures.dart';

abstract interface class {{feature_name.pascalCase()}}RemoteDataSource {
  Future<Either<Failure, void>> fetchData();
}

class {{feature_name.pascalCase()}}RemoteDataSourceImpl
    implements {{feature_name.pascalCase()}}RemoteDataSource {
  const {{feature_name.pascalCase()}}RemoteDataSourceImpl();

  @override
  Future<Either<Failure, void>> fetchData() async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      return const Right<Failure, void>(null);
    } catch (e) {
      return Left<Failure, void>(ServerFailure(message: 'Failed to fetch data: $e'));
    }
  }
}
