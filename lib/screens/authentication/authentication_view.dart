import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syouki_app/components/amaoba_paint.dart';
import 'package:syouki_app/components/app_scafffold.dart';
import 'package:syouki_app/components/fooda_button.dart';
import 'package:syouki_app/constant/icon_path.dart';
import 'package:syouki_app/constant/image_path.dart';
import 'package:syouki_app/screens/onboard/onboard_view.dart';
import 'package:syouki_app/themes/app_theme.dart';

enum AuthenticationViewState { signIn, signUp, ComeSignin }

class AuthenticationView extends StatelessWidget {
  final AuthenticationViewState viewState;

  const AuthenticationView({Key? key, required this.viewState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Stack(
        children: [
          if (viewState == AuthenticationViewState.ComeSignin)
            Stack(
              children: const [
                 Positioned(
                  left: -110,
                  top: 10,
                  child: const AmaobaPaint(
                  color: AppTheme.darkBlueLight,
                ),
                ),
                Positioned(
                  left: -20,
                  top: -70,
                  child: const AmaobaPaint(
                    color: AppTheme.darkBlue,
                  ),
                ),
              ],
            ),
            if (viewState == AuthenticationViewState.signIn || viewState == AuthenticationViewState.signUp)

    Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: const AmaobaPaint(
                color: AppTheme.darkBlueLight,
              ),
          ),
          if (viewState == AuthenticationViewState.signIn || viewState == AuthenticationViewState.signUp)
          Positioned(
            right: -60,
            top: -60,
            child: Image.asset(
            viewState == AuthenticationViewState.signUp ? ImagePath.fry : ImagePath.salad,
              height: 300,
            ),
          ),
          // if (viewState == AuthenticationViewState.signUp)
          //   Transform(
          //     alignment: Alignment.center,
          //     transform: Matrix4.rotationY(pi),
          //     child: const AmaobaPaint(
          //       color: AppTheme.darkBlueLight,
          //     ),
          //   ),
          // if (viewState == AuthenticationViewState.signUp)
          //   Positioned(
          //     right: -60,
          //     top: -60,
          //     child: Image.asset(
          //       ImagePath.fry,
          //       height: 300,
          //     ),
          //   ),
          Builder(
            builder: (context) {
              if (viewState == AuthenticationViewState.signUp) {
                return const SignUpView();

                // return const ComeSignin();
              }
              if (viewState == AuthenticationViewState.signIn) {
                return const SignInView();
                // return Container();

              } else {
                // return const SignUpView();
                return const ComeSignin();

                // return Container();
              }
            },
          )
          // SignInView(),
        ],
      ),
    );
  }
}
class ComeSignin extends StatelessWidget {
  const ComeSignin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppTheme.cardPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: AppTheme.cardPadding * 3),

          Image.asset(
            ImagePath.avtar,
            height: 120,
          ),
          const SizedBox(height: AppTheme.cardPadding),
          Text(
            'Welcome Back',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: AppTheme.elementSpacing),
          const AuthHeader("Nice To See You Again !!"),
          const SizedBox(height: AppTheme.cardPadding * 4),
          FoodaTextfield(
            title: "Password",
          ),
          const SizedBox(height: AppTheme.cardPadding),
          FodaButton(title: "Sign In", onTap: () {}),
        ],
      ),
    );
  }
}

class SignUpView extends StatelessWidget {
  const SignUpView({
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
              const AuthHeader("Sign Up"),
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
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: AppTheme.grey, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: AppTheme.cardPadding),
              FoodaTextfield(
                title: "Your Name",
              ),
              const SizedBox(height: AppTheme.elementSpacing),
              FoodaTextfield(
                title: "Your Email",
              ),
              const SizedBox(height: AppTheme.elementSpacing),
              FoodaTextfield(
                title: "Password",
              ),
              const SizedBox(height: AppTheme.cardPadding),
              FodaButton(title: "Sign Up", onTap: () {}),
              const SizedBox(height: AppTheme.cardPadding * 3),
            ],
          )),
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
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: AppTheme.grey, fontWeight: FontWeight.w700),
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
