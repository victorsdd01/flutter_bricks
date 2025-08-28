import 'package:{{project_name}}/core/core.dart';

 
abstract interface class {{ feature_name.pascalCase() }}LocalDataSource {

  Future<Either<Failure, void>> saveData();
  
}

class {{ feature_name.pascalCase() }}LocalDataSourceImpl implements {{ feature_name.pascalCase() }}LocalDataSource {

  const {{ feature_name.pascalCase() }}LocalDataSourceImpl();
  
  @override
  Future<Either<Failure, void>> saveData() async {
    try {
      
      await Future<dynamic>.delayed(const Duration(seconds: 1));
      return const Right<Failure, void>(null);
    } catch (e) {
      return Left<Failure, void>(ExampleFailure(message:"Example failure message"));
    }
  }
}

