import 'package:flutter/material.dart';
import 'package:syouki_app/components/amaoba_paint.dart';
import 'package:syouki_app/components/app_scafffold.dart';
import 'package:syouki_app/components/fooda_button.dart';
import 'package:syouki_app/components/oval_paint.dart';
import 'package:syouki_app/constant/image_path.dart';
import 'package:syouki_app/constant/route_name.dart';
import 'package:syouki_app/screens/authentication/authentication_view.dart';
import 'package:syouki_app/themes/app_theme.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SafeArea(
          child: Stack(
            children: [
              OvalPaint(),
              AmaobaPaint(),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[Image.asset(ImagePath.discuss,
                   height: 370,
                    width: 400,
                  ),
                    const SizedBox(height: AppTheme.cardPadding),
                    ShaderMask(shaderCallback: (rect){
                          return LinearGradient(

                        stops: [0.1,0.8,1.0],
                          colors: [
                            Colors.orange,
                            Colors.purple,
                            Colors.red
                          ] ).createShader(rect);
                    },
                        child: Text('Syouki',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'Mainstay',fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                    ),
                    const SizedBox(height: AppTheme.cardPadding * 0.9),

                    SizedBox(
                      width: AppTheme.size(context).width * 0.7,
                      child: Column(
                        children: [
                          const AuthHeader1("Welcome\nto Food Delivery Store"),
                          const SizedBox(height: AppTheme.elementSpacing * 0.9),
                          FodaButton(title: "Sign In", onTap: () {
                            Navigator.of(context).pushNamed(authPath, arguments: AuthenticationViewState.signIn);

                          }),
                          const SizedBox(height: AppTheme.elementSpacing * 2),
                          FodaButton(title: "Sign Up",gradiant: const [AppTheme.darkBlue], onTap: () {
                            Navigator.of(context).pushNamed(authPath, arguments: AuthenticationViewState.signUp);
                          })

                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

class AuthHeader extends StatelessWidget {
  final String title;
  const AuthHeader(
      this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.w900,color: AppTheme.red,height: 1),
    );
  }
}

class AuthHeader1 extends StatelessWidget {
  final String title;
  const AuthHeader1(
      this.title, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline3?.copyWith(fontWeight: FontWeight.w700,color: Colors.grey,height: 1),
    );
  }
}

