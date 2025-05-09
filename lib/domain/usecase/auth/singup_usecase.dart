import 'package:dartz/dartz.dart';
import 'package:travel/core/models/failure.dart';
import 'package:travel/core/usecase/usecase.dart';
import 'package:travel/data/models/auth/create_user.dart';
import 'package:travel/domain/repo/auth/auth_repo.dart';
import 'package:travel/service_locator.dart';

class SignupUsecase extends Usecase<Either<Failure, String>, CreateUser> {
  @override
  Future<Either<Failure, String>> call({CreateUser? param}) async {
    return await sl<AuthRepo>().signup(param!.email, param.password);
  }
}
