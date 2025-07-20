import 'package:ecommerce/data/auth/repository/auth_repository_impl.dart';
import 'package:ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';
import 'package:ecommerce/domain/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;


Future<void> initializeDependencies() async{
  // Service

  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  // Repository

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  //use case

  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}