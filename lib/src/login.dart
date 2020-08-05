import 'package:flutter/material.dart';
import 'package:login_provider/src/pages/welcomepage.dart';
import 'package:login_provider/src/providers/usuarioinfo.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
 final usuarioController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    final usuarioInfo = Provider.of<UsuarioInfo>(context);
    return Scaffold(
          body:  Container(
                  decoration:  BoxDecoration(
                      gradient:  LinearGradient(
                    colors: <Color>[
                      const Color.fromRGBO(162, 146, 199, 0.8),
                      const Color.fromRGBO(51, 51, 63, 0.9),
                    ],
                    stops: [0.2, 1.0],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.0, 1.0),
                  )),
                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                      
                                children: <Widget>[
                                  TextFormField(
                                    controller: usuarioController,
                                     obscureText: true,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: Icon(Icons.person_add),
                                        labelText: 'Usuario'
                                      ),
                                      
                                    ),
                                  
                                  Padding(padding: EdgeInsets.all(8.0)),
                                  TextField(
                                     obscureText: true,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: Icon(Icons.lock_outline),
                                        labelText: 'Password'
                                      ),
                                      
                                    ),
                                  
                                  Padding(padding: EdgeInsets.all(16.0)),
                                  RaisedButton(
                                    
                                    padding: EdgeInsets.all(20.0),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),),
                                    onPressed: (){
                                      usuarioInfo.usuario = usuarioController.text;
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => WelcomePage()),
                                      );
                                    },
                                    child: Text("Sign Up"),
                                  ),
                                  
                                ],
                              )
          )
        
    );
  }
}