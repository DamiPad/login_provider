
import 'package:flutter/material.dart';
import 'package:login_provider/src/login.dart';
import 'package:login_provider/src/providers/usuarioinfo.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
     ChangeNotifierProvider(
            create: (context) => UsuarioInfo(),
            child: MaterialApp(
              title: 'Login App',
              initialRoute: 'login',
              routes: {'login':(context)=> LoginScreen(),}
            
          
        
    ),
     );
  }
}