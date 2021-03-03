import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sos_estude/models/user_manager.dart';
import 'screens/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_)=>UserManager(),
          lazy: false,
        ),
      ],

      child: MaterialApp(
        title: 'SOS Estude',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
      ),

    );
  }
}

