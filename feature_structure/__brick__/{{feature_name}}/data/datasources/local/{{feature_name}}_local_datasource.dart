import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/core/errors/failures.dart';

abstract interface class {{feature_name.pascalCase()}}LocalDataSource {
  Future<Either<Failure, void>> saveData();
}

class {{feature_name.pascalCase()}}LocalDataSourceImpl
    implements {{feature_name.pascalCase()}}LocalDataSource {
  const {{feature_name.pascalCase()}}LocalDataSourceImpl();

  @override
  Future<Either<Failure, void>> saveData() async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      return const Right<Failure, void>(null);
    } catch (e) {
      return Left<Failure, void>(CacheFailure(message: 'Failed to save data: $e'));
    }
  }
}
