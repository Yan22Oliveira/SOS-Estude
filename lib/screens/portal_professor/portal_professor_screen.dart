import 'package:flutter/material.dart';
import 'package:sos_estude/common/custom_drawer.dart';

class PortalProfessorScreen extends StatelessWidget {

  final colorPrimary = Color(0xFF6C63FF);

  @override
  Widget build(BuildContext context) {

    var altura = MediaQuery.of(context).size.height;

    return Scaffold(

      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: colorPrimary),
        title: Text(
          "Portal do Professor",
          style: TextStyle(
              color: colorPrimary
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          child: Image.asset("images/professor.png"),
        ),
      ),

    );
  }
}
