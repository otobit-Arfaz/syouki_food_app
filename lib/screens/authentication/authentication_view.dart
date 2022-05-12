import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syouki_app/components/amaoba_paint.dart';
import 'package:syouki_app/components/app_scafffold.dart';
import 'package:syouki_app/components/fooda_button.dart';
import 'package:syouki_app/constant/image_path.dart';
import 'package:syouki_app/screens/onboard/onboard_view.dart';
import 'package:syouki_app/themes/app_theme.dart';

class AuthenticationView extends StatelessWidget {
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
       Padding(
         padding: const EdgeInsets.all(AppTheme.cardPadding),
         child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AuthHeader("Sign In"),
              FodaButton(title: "Sign In With Google", onTap: () {})
            ],
      )
    ),
       )
          ],
        ),
    );
  }
}
