import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(

      alignment: Alignment.center,
      width: 200,
      color: Colors.grey[300],

      child: Row(

        mainAxisAlignment: MainAxisAlignment.end,

        children: [

          Icon(
            Icons.videocam_rounded,
            color: Colors.black,
            size: 40,
          ),

          Spacer(),

          Icon(
            Icons.mic,
            color: Colors.black,
            size: 40,
          ),

          Spacer(),

          Icon(
            Icons.zoom_out_map,
            color: Colors.black,
            size: 40,
          ),

          Spacer(),

          Container(
            color: Colors.red,
            child: Icon(
              Icons.call_end,
              color: Colors.black,
              size: 40,
            ),
          ),

        ],

      ),

    );

  }
}
