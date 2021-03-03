import 'package:flutter/material.dart';
import 'package:sos_estude/screens/signup/signup_screen.dart';

class ButtonCriarConta extends StatelessWidget {

  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: EdgeInsets.all(12.0),

      child: Material(

        color: Colors.white,

        child: InkWell(

          onTap: () {
             Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SignupScreen()));
          },

          child: RichText(

            text: TextSpan(
              children: [

                TextSpan(
                  text: 'Não possui uma conta? ',
                  style: TextStyle(
                    color: colorPrimary,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                TextSpan(
                  text: 'Criar Conta',
                  style: TextStyle(
                    color:  colorAux,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
