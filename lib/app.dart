import 'package:flutter/material.dart';
import 'package:syouki_app/constant/route_name.dart';
import 'package:syouki_app/services/navigation_service.dart';
import 'package:syouki_app/themes/app_theme.dart';

class Foodapp extends StatelessWidget {
  const Foodapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const Wrapper(),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: NavigationService.instance.navigatorkey,
        onGenerateRoute: NavigationService.instance.onGeneratedRoute,
        initialRoute: WelcomePath,
      ),
    );
  }
}