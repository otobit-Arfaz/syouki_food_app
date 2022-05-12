import 'package:flutter/material.dart';
import 'package:syouki_app/components/amaoba_paint.dart';
import 'package:syouki_app/components/app_scafffold.dart';
import 'package:syouki_app/components/fooda_button.dart';
import 'package:syouki_app/components/oval_paint.dart';
import 'package:syouki_app/constant/image_path.dart';
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
                    const SizedBox(height: AppTheme.cardPadding * 0.6),

                    SizedBox(
                      width: AppTheme.size(context).width * 0.6,
                      child: Column(
                        children: [
                          const AuthHeader("Welcome\nto Food Delivery Store"),
                          const SizedBox(height: AppTheme.elementSpacing * 0.5),
                          FodaButton(title: "Sign In", onTap: () {}),
                          const SizedBox(height: AppTheme.elementSpacing * 0.5),
                          FodaButton(title: "Sign Up",gradiant: const [AppTheme.darkBlue], onTap: () {})

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
      style: Theme.of(context).textTheme.headline3?.copyWith(fontWeight: FontWeight.w900,color: AppTheme.orange,height: 1),
    );
  }
}
