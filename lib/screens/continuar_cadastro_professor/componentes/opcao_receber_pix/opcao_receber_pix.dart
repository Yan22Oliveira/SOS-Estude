import 'package:flutter/material.dart';

class OpcaoReceberPix extends StatefulWidget {
  @override
  _OpcaoReceberPixState createState() => _OpcaoReceberPixState();
}

enum SingingCharacter { Nao, Sim }

class _OpcaoReceberPixState extends State<OpcaoReceberPix> {

  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  SingingCharacter _character = SingingCharacter.Sim;

  @override
  Widget build(BuildContext context) {

    return Container(

      child: Column(

        children: [

          Text(
            "Receber pelo Pix:",
            style: TextStyle(
              color: colorPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 12,),

          Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Row(
                children: [
                  Radio(
                    value: SingingCharacter.Nao,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {

                    },
                    hoverColor: colorAux,
                    activeColor: colorAux,
                    focusColor: colorAux,

                  ),
                  Text('Não'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: SingingCharacter.Sim,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {

                    },
                    hoverColor: colorAux,
                    activeColor: colorAux,
                    focusColor: colorAux,
                  ),
                  Text('Sim'),
                ],
              )
            ],
          ),

        ],

      ),

    );

  }
}
