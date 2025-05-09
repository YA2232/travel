import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/common/widget/appBar/basic_appbr.dart';
import 'package:travel/data/models/auth/create_user.dart';
import 'package:travel/domain/usecase/auth/singup_usecase.dart';
import 'package:travel/presentation/signin/widgets/soical.dart';
import 'package:travel/presentation/signup/bloc/loading_signup_cubit.dart';

import 'package:travel/presentation/signup/widgets/have_account_text.dart';
import 'package:travel/presentation/signup/widgets/signup_button.dart';
import 'package:travel/presentation/signup/widgets/signup_text.dart';
import 'package:travel/presentation/signup/widgets/text_field_email.dart';
import 'package:travel/presentation/signup/widgets/text_field_name.dart';
import 'package:travel/presentation/signup/widgets/text_field_password.dart';
import 'package:travel/service_locator.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoadingSignupCubit(),
      child: Scaffold(
        appBar: BasicAppbar(
          hideBack: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: SignupText()),
                SizedBox(height: 40),
                TextFieldName(name: name),
                SizedBox(height: 20),
                TextFieldEmailSignup(
                  email: email,
                ),
                SizedBox(height: 20),
                TextFieldPasswordSignup(
                  password: password,
                ),
                SizedBox(height: 40),
                BlocBuilder<LoadingSignupCubit, bool>(
                  builder: (context, isLoading) {
                    return isLoading
                        ? CircularProgressIndicator()
                        : SignupButton(
                            onPressed: () async {
                              final loadingCubit =
                                  context.read<LoadingSignupCubit>();
                              loadingCubit.show();

                              final result = await sl<SignupUsecase>().call(
                                param: CreateUser(
                                  name: name.text,
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
                HaveAccountText(),
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
