import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/core/errors/failures.dart';

abstract interface class {{feature_name.pascalCase()}}Repository {
  Future<Either<Failure, void>> fetchData();
}
