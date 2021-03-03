import 'package:flutter/material.dart';

class FormEmail extends StatelessWidget {

  final _emailController = TextEditingController();
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
                "E-mail",
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
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
              ),

              onChanged: (text){


              },

              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: colorPrimary,
                ),
                hintText: 'example@example.com.br',
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
