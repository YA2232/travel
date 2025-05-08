import 'package:flutter/material.dart';
import 'package:travel/common/widget/appBar/basic_appbr.dart';
import 'package:travel/presentation/signin/widgets/forget_button.dart';
import 'package:travel/presentation/signin/widgets/dont_have_account_text.dart';
import 'package:travel/presentation/signin/widgets/signin_button.dart';
import 'package:travel/presentation/signin/widgets/signin_text.dart';
import 'package:travel/presentation/signin/widgets/soical.dart';
import 'package:travel/presentation/signin/widgets/text_field_email.dart';
import 'package:travel/presentation/signin/widgets/text_field_password.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        hideBack: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: SigninText()),
            SizedBox(
              height: 40,
            ),
            TextFieldEmail(),
            SizedBox(
              height: 20,
            ),
            TextFieldPassword(onPressed: () {}),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: ForgetButton(onPressed: () {})),
            SizedBox(
              height: 40,
            ),
            SigninButton(),
            SizedBox(
              height: 40,
            ),
            DontHaveAccountText(),
            Spacer(),
            Soical()
          ],
        ),
      ),
    );
  }
}
