import 'package:flutter/material.dart';

class OpcaoDeCadastro extends StatefulWidget {
  @override
  _OpcaoDeCadastroState createState() => _OpcaoDeCadastroState();
}

enum SingingCharacter { Aluno, Professor }

class _OpcaoDeCadastroState extends State<OpcaoDeCadastro> {

  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  SingingCharacter _character = SingingCharacter.Professor;

  @override
  Widget build(BuildContext context) {

    return Container(

      child: Column(

        children: [

          Text(
            "Opção de cadastro:",
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
                    value: SingingCharacter.Aluno,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {

                    },
                    hoverColor: colorAux,
                    activeColor: colorAux,
                    focusColor: colorAux,

                  ),
                  Text('Aluno'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: SingingCharacter.Professor,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {

                    },
                    hoverColor: colorAux,
                    activeColor: colorAux,
                    focusColor: colorAux,
                  ),
                  Text('Professor'),
                ],
              )
            ],
          ),

        ],

      ),

    );

  }
}
