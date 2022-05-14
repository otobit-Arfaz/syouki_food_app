import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syouki_app/screens/authentication/authentication_view.dart';
import 'package:syouki_app/screens/onboard/onboard_view.dart';

import '../constant/route_name.dart';

class NavigationService {
  NavigationService._();

  static NavigationService? _instance;

  static NavigationService get instance {
      _instance ??= NavigationService._();
      return _instance!;
  }
  GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();

  Route? onGeneratedRoute(RouteSettings settings) {
    final routeName = settings.name;
    switch (routeName) {
      case authPath:
        final state = settings.arguments as AuthenticationViewState;
        return navigationToMaterialPageRoute(
          settings,
          AuthenticationView(
              viewState: state,
          )
        );
      case WelcomePath:
        return navigationToMaterialPageRoute(
            settings,
            const OnboardView()
        );
        
        break;
      default:
        return navigationToMaterialPageRoute(settings,const Scaffold());
    }
    navigationToMaterialPageRoute(settings, Scaffold());
  }

  MaterialPageRoute navigationToMaterialPageRoute(RouteSettings settings, Widget page,
  {bool maintainState = true, bool fullscreen = false}) {
    return MaterialPageRoute(
      maintainState: maintainState,
      fullscreenDialog: fullscreen,
      settings: settings,
      builder: (_) => page,);
  }


}