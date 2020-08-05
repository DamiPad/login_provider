import 'package:flutter/material.dart';
import 'package:login_provider/main.dart';
import 'package:login_provider/src/pages/welcomepage.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/':(BuildContext context) => MyApp(),
    '/welcomepage':(BuildContext context) => WelcomePage(),
    
  
  };

}