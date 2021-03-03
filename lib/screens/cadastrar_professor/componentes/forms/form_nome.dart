import 'package:flutter/material.dart';

class FormNome extends StatelessWidget {

  final _nomeController = TextEditingController();
  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Column(
            children: <Widget>[
              Text(
                "Nome",
                style: TextStyle(
                    color: colorPrimary,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          SizedBox(height: 10.0),

          Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8.0,
                      offset: Offset(0, 1)
                  ),
                ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: _nomeController,
                textCapitalization: TextCapitalization.sentences,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Digite o seu nome completo',
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
