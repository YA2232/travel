import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel/core/models/failure.dart';
import 'package:travel/core/usecase/usecase.dart';
import 'package:travel/data/models/auth/signin_user.dart';
import 'package:travel/domain/repo/auth/auth_repo.dart';
import 'package:travel/service_locator.dart';

class SigninUsecase extends Usecase<Either<Failure, String>, SigninUser> {
  @override
  Future<Either<Failure, String>> call({SigninUser? param}) async {
    return await sl<AuthRepo>().signin(param!.email, param.password);
  }
}
