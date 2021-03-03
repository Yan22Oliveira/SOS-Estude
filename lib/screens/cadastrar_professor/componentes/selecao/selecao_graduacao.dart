import 'package:flutter/material.dart';

class SelecaoGraduacao extends StatelessWidget {

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
                "Graduação",
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const SizedBox(),

                  Text(
                    "Selecione sua graduação",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300
                    ),
                  ),

                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: colorPrimary,
                  ),

                ],

              ),
            ),
          ),
        ],
      ),
    );

  }
}
