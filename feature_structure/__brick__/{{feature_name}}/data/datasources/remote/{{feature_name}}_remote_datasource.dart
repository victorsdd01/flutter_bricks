import 'package:{{project_name}}/core/core.dart';



abstract interface class {{ feature_name.pascalCase() }}RemoteDataSource {

  Future<Either<Failure, void>> fetchData();

}


class {{ feature_name.pascalCase() }}RemoteDataSourceImpl implements {{ feature_name.pascalCase() }}RemoteDataSource {
  
    @override
    Future<Either<Failure, void>> fetchData() async {
      try {
        await Future.delayed(const Duration(seconds: 1));
        return const Right(null);
      } catch (e) {
        return const Left<Failure, void>(ExampleFailure(message:"Failed to fetch data"));
      }
    }
  }