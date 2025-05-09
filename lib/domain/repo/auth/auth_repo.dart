import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel/core/models/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, String>> signin(String email, String password);
  Future<Either<Failure, String>> signup(String email, String password);
}
