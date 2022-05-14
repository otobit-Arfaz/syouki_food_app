import 'package:flutter/material.dart';
import 'package:syouki_app/screens/authentication/authentication_view.dart';
import 'package:syouki_app/screens/onboard/onboard_view.dart';
import 'package:syouki_app/themes/app_theme.dart';

import 'components/app_scafffold.dart';

void main() {
  runApp(const Foodapp());
}

class Foodapp extends StatelessWidget {
  const Foodapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const AuthenticationView(viewState: AuthenticationViewState.signUp,),
    );
  }
}
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppScaffold(
//       body:Center(
//         child: FodaButton(onTap: () {},
//           gradiant: [AppTheme.orange,AppTheme.red],
//           leadingIcon: Icon(Icons.facebook,color: AppTheme.white,),
//         title: 'Sign In',),
//       ),
//     );
//   }
// }
//
//
