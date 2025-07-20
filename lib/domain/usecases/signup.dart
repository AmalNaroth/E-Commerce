import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/data/auth/model/user_create_req.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';
import 'package:ecommerce/service_locator.dart';

class SignupUseCase extends UseCase<Either, UserCreateRequestModel> {
  @override
  Future<Either> call({UserCreateRequestModel? params}) async {
    return await sl<AuthRepository>().signUp(data: params!);
  }
}
