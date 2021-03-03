import 'package:flutter/material.dart';
import 'package:sos_estude/screens/base_screen/base_screen.dart';

class ButtonLogin extends StatelessWidget {

  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,

      child: RaisedButton(

        elevation: 7.0,
        onPressed: (){

          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => BaseScreen()));
        },

        padding: EdgeInsets.all(15.0),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),

        ),
        color: colorAux,

        child: Text(
          'Autenticar',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }

}
