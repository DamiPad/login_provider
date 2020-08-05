import 'package:flutter/material.dart';
import 'package:login_provider/src/providers/usuarioinfo.dart';
import 'package:provider/provider.dart';

class TextWelcome extends StatelessWidget {
  const TextWelcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioInfo = Provider.of<UsuarioInfo>(context);
   
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(child: Text('Bienvenido Usuario: ${usuarioInfo.usuario}', style: TextStyle(color: Colors.blueAccent, fontSize: 25.0),)),
      ],
    );
  }
}