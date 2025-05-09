import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_platform_interface/src/firebase_auth_exception.dart';
import 'package:travel/core/models/failure.dart';
import 'package:travel/data/source/auth/auth_source.dart';
import 'package:travel/domain/repo/auth/auth_repo.dart';
import 'package:travel/service_locator.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failure, String>> signin(String email, String password) async {
    return await sl<AuthSource>().signin(email, password);
  }

  @override
  Future<Either<Failure, String>> signup(String email, String password) async {
    return await sl<AuthSource>().signup(email, password);
  }
}
