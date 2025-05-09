import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel/core/models/failure.dart';

abstract class AuthSource {
  Future<Either<Failure, String>> signin(String email, String password);
  Future<Either<Failure, String>> signup(String email, String password);
}

class AuthSourceImpl extends AuthSource {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Either<Failure, String>> signin(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right("Login successful");
    } on FirebaseAuthException catch (e) {
      return Left(_mapFirebaseErrorToFailure(e));
    }
  }

  @override
  Future<Either<Failure, String>> signup(String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right("Signup successful");
    } on FirebaseAuthException catch (e) {
      return Left(_mapFirebaseErrorToFailure(e));
    }
  }

  Failure _mapFirebaseErrorToFailure(FirebaseAuthException e) {
    print("FIREBASE ERROR CODE: ${e.code}");

    switch (e.code) {
      case 'invalid-email':
        return Failure('البريد الإلكتروني غير صحيح');
      case 'user-disabled':
        return Failure('تم تعطيل هذا الحساب');
      case 'user-not-found':
        return Failure('لا يوجد مستخدم بهذا البريد الإلكتروني');
      case 'wrong-password':
        return Failure('كلمة المرور غير صحيحة');
      case 'email-already-in-use':
        return Failure('البريد الإلكتروني مستخدم بالفعل');
      case 'operation-not-allowed':
        return Failure('هذه العملية غير مسموح بها حاليًا');
      case 'weak-password':
        return Failure('كلمة المرور ضعيفة جدًا');
      case 'missing-email':
        return Failure('يرجى إدخال البريد الإلكتروني');
      case 'missing-password':
        return Failure('يرجى إدخال كلمة المرور');
      case 'too-many-requests':
        return Failure(
            'تم حظر هذا الحساب مؤقتًا بسبب عدد كبير من المحاولات. حاول لاحقًا.');
      case 'network-request-failed':
        return Failure('تعذر الاتصال بالإنترنت');
      case 'invalid-credential':
        return Failure('بيانات تسجيل الدخول غير صالحة');
      case 'user-mismatch':
        return Failure('بيانات تسجيل الدخول لا تتطابق مع المستخدم الحالي');
      case 'invalid-verification-code':
        return Failure('رمز التحقق غير صحيح');
      case 'invalid-verification-id':
        return Failure('رمز التحقق غير صالح');
      default:
        return Failure('حدث خطأ غير متوقع: ${e.message ?? e.code}');
    }
  }
}
