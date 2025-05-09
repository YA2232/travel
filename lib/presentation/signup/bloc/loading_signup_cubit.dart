import 'package:bloc/bloc.dart';

class LoadingSignupCubit extends Cubit<bool> {
  LoadingSignupCubit() : super(false);

  void show() => emit(true);
  void hide() => emit(false);
}
