import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:travel/data/repo/auth/auth_repo_impl.dart';
import 'package:travel/data/source/auth/auth_source.dart';
import 'package:travel/domain/repo/auth/auth_repo.dart';
import 'package:travel/domain/usecase/auth/signin_usecase.dart';
import 'package:travel/domain/usecase/auth/singup_usecase.dart';

final sl = GetIt.instance;

Future<void> initDb() async {
  sl.registerSingleton<AuthSource>(AuthSourceImpl());
  sl.registerSingleton<AuthRepo>(AuthRepoImpl());
  sl.registerSingleton<SigninUsecase>(SigninUsecase());
  sl.registerSingleton<SignupUsecase>(SignupUsecase());
}
