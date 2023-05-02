import 'package:flutter/material.dart';
import 'main.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args= settings.arguments;
    switch (settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>const FirstPage());
      case '/second':
        if (args is String) {
          return MaterialPageRoute(builder: (_)=>SecondPage(message: args));
        }  
        else{
          return _errorRoute();
        }
      default:
        return _errorRoute();
        
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: const Center(child: Text("Error"),),
      );
    });
  }

}
