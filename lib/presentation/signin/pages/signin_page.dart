import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/common/widget/appBar/basic_appbr.dart';
import 'package:travel/data/models/auth/signin_user.dart';
import 'package:travel/domain/usecase/auth/signin_usecase.dart';
import 'package:travel/presentation/signin/bloc/cubit/loading_cubit.dart';
import 'package:travel/presentation/signin/widgets/forget_button.dart';
import 'package:travel/presentation/signin/widgets/dont_have_account_text.dart';
import 'package:travel/presentation/signin/widgets/signin_button.dart';
import 'package:travel/presentation/signin/widgets/signin_text.dart';
import 'package:travel/presentation/signin/widgets/soical.dart';
import 'package:travel/presentation/signin/widgets/text_field_email.dart';
import 'package:travel/presentation/signin/widgets/text_field_password.dart';
import 'package:travel/service_locator.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoadingCubit(),
      child: Scaffold(
        appBar: BasicAppbar(hideBack: true),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: SigninText()),
                SizedBox(height: 40),
                TextFieldEmail(email: email),
                SizedBox(height: 20),
                TextFieldPassword(
                  password: password,
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: ForgetButton(onPressed: () {}),
                ),
                SizedBox(height: 40),
                BlocBuilder<LoadingCubit, bool>(
                  builder: (context, isLoading) {
                    return isLoading
                        ? CircularProgressIndicator()
                        : SigninButton(
                            onPressed: () async {
                              final loadingCubit = context.read<LoadingCubit>();
                              loadingCubit.show();

                              final result = await sl<SigninUsecase>().call(
                                param: SigninUser(
                                  email: email.text,
                                  password: password.text,
                                ),
                              );

                              loadingCubit.hide();

                              result.fold(
                                (l) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      behavior: SnackBarBehavior.floating,
                                      content: Text(l.message),
                                    ),
                                  );
                                },
                                (r) {
                                  print("success");
                                  // navigate to next screen here if needed
                                },
                              );
                            },
                          );
                  },
                ),
                SizedBox(height: 40),
                DontHaveAccountText(),
                SizedBox(height: 40),
                Soical(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
