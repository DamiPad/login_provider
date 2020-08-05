import 'package:flutter/material.dart';
import 'package:login_provider/src/widgets/textwelcome.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return  Container(
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
        child: Center(child: TextWelcome()),
      
    );
  }
}