import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syouki_app/components/amaoba_paint.dart';
import 'package:syouki_app/components/app_scafffold.dart';
import 'package:syouki_app/components/fooda_button.dart';
import 'package:syouki_app/constant/icon_path.dart';
import 'package:syouki_app/constant/image_path.dart';
import 'package:syouki_app/screens/onboard/onboard_view.dart';
import 'package:syouki_app/themes/app_theme.dart';

enum AuthenticationViewState {signIn, signUp, comeBack}

class AuthenticationView extends StatelessWidget {
  // final AuthenticationViewState viewState;
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Stack(
        children: [
          Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: AmaobaPaint(
                color: AppTheme.darkBlueLight,
              )),
          Positioned(
            right: -60,
            top: -60,
            child: Image.asset(
              ImagePath.salad,
              height: 300,
            ),
          ),
          SignInView(),
        ],
      ),
    );
  }
}

class SignInView extends StatelessWidget {
  const SignInView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppTheme.cardPadding),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AuthHeader("Sign In"),
          const SizedBox(height: AppTheme.cardPadding),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppTheme.cardPadding * 2),
            child: FodaButton(
                title: "Sign In With Google",
                gradiant: const [AppTheme.orange, AppTheme.red],
                leadingIcon: Image.asset(
                  IconPath.google,
                  color: AppTheme.white,
                  height: 35,
                ),
                onTap: () {}),
          ),
          const SizedBox(height: AppTheme.cardPadding),
          Text(
            "Or with Email",
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: AppTheme.grey, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppTheme.cardPadding),
          FoodaTextfield(
            title: "Your Email",
          ),
          const SizedBox(height: AppTheme.elementSpacing),
          FoodaTextfield(
            title: "Password",
          ),
          const SizedBox(height: AppTheme.cardPadding),
          FodaButton(title: "Sign In", onTap: () {}),
          const SizedBox(height: AppTheme.cardPadding * 3),
        ],
      )),
    );
  }
}

class FoodaTextfield extends StatelessWidget {
  final String title;

  const FoodaTextfield({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: title),
    );
  }
}
