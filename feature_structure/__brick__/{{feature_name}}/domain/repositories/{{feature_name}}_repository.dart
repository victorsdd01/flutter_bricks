import 'package:{{project_name}}/core/core.dart';

abstract interface class {{ feature_name.pascalCase() }}Repository {
  

  Future<Either<Failure, void>> fetchData();

}