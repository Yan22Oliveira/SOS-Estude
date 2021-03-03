import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sos_estude/models/user_manager.dart';
import 'package:sos_estude/screens/cadastrar_professor/cadastrar_professor_screen.dart';

class ButtonContinuar extends StatelessWidget {

  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  @override
  Widget build(BuildContext context) {

    return Consumer<UserManager>(

      builder: (_,userManager,__){

        return Container(
          width: double.infinity,
          child: RaisedButton(

            elevation: 7.0,
            onPressed: (){

              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CadastrarProfessorScreen()));

            },
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            color: colorAux,

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                const SizedBox(width: 12,),

                Text(
                  'Continuar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),

        );

      },

    );

  }
}
