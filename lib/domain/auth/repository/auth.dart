import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/auth/model/user_create_req.dart';

abstract class AuthRepository {
  
  Future<Either> signUp({required UserCreateRequestModel data});

  Future<Either> getAges();
}