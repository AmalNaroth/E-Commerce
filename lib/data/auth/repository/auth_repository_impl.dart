import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/auth/model/user_create_req.dart';
import 'package:ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';
import 'package:ecommerce/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signUp({required UserCreateRequestModel data}) async{
    return sl<AuthFirebaseService>().signUp(data: data);
  
  }
  
  @override
  Future<Either> getAges() {
    // TODO: implement getAges
    throw UnimplementedError();
  }
}