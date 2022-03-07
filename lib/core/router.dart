// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/router_constants.dart';

import 'package:fsc_ibb/views/splash/splash_view.dart' as view0;
import 'package:fsc_ibb/views/on_board/on_board_view.dart' as view1;
import 'package:fsc_ibb/views/home/home_view.dart' as view2;
import 'package:fsc_ibb/views/profile/profile_view.dart' as view4;
import 'package:fsc_ibb/views/sign_up/sign_up_view.dart' as view5;
import 'package:fsc_ibb/views/login/login_view.dart' as view6;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashViewRoute:
        return MaterialPageRoute(builder: (_) => view0.SplashView());
      case onBoardViewRoute:
        return MaterialPageRoute(builder: (_) => view1.OnBoardView());
      case homeViewRoute:
        return MaterialPageRoute(builder: (_) => view2.HomeView());
      case profileViewRoute:
        return MaterialPageRoute(builder: (_) => view4.ProfileView());
      case signUpViewRoute:
        return MaterialPageRoute(builder: (_) => view5.SignUpView());
      case loginViewRoute:
        return MaterialPageRoute(builder: (_) => view6.LoginView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}