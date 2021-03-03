import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {

  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorPrimary,
      padding: const EdgeInsets.fromLTRB(32, 24, 16, 8),
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[


          CircleAvatar(

            child:Icon(
              Icons.person,
              color: colorPrimary,
              size: 50,
            ),
            maxRadius: 40,
            backgroundColor: Colors.white,

          ),

          const SizedBox(height: 10,),

          Text(
            'Olá,',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          GestureDetector(
            onTap: (){

            },
            child: Text(
              'Sair',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        ],
      ),
    );
  }
}