import 'package:flutter/material.dart';
import 'package:sos_estude/common/custom_drawer.dart';

class PagamentosScreen extends StatelessWidget {

  final colorPrimary = Color(0xFF6C63FF);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: colorPrimary),
        title: Text(
          "Pagamentos",
          style: TextStyle(
              color: colorPrimary
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          child: Image.asset("images/pagamentos.png"),
        ),
      ),

    );
  }
}
