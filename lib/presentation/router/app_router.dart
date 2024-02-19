import 'package:flutter/material.dart';
import 'package:untitled3/presentation/screens/home_screen/home_screen.dart';
import 'package:untitled3/presentation/screens/splash_screen/splash_screen.dart';

import '../../core/change_pages/change_pages.dart';

class AppRouter{
  late Widget startPage;
  Route?onGenerateRoute(RouteSettings settings){
    startPage=const SplashScreen();
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>startPage);
      case homeScreen:
        return MaterialPageRoute(builder: (_)=>const HomeScreen());
      default:
        return null;
    }

  }
}