import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'componentes/buttons/button_criar_conta.dart';
import 'componentes/buttons/button_login.dart';
import 'componentes/forms/form_email.dart';
import 'componentes/forms/form_senha.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,
      key: scaffoldKey,

      body: Center(
        child: Container(

          width: 500,

          child: Form(

            key: _formKey,

            child: AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Stack(
                  children: <Widget>[

                    Container(

                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.white,

                    ),

                    Container(

                        height: double.maxFinite,

                        child: SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 36.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              SizedBox(height: 44.0),

                              Container(
                                  alignment: AlignmentDirectional.topCenter,
                                  child: Image.asset(
                                      "images/sos_logo.png",
                                      height: 200,
                                      width: 300

                                  )
                              ),

                              SizedBox(height: 36.0),

                              Row(

                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [

                                  Text(
                                    "SOS ",
                                    style: TextStyle(
                                      color: colorAux,
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(
                                    "Estude",
                                    style: TextStyle(
                                      color: colorPrimary,
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],

                              ),

                              SizedBox(height: 36.0),

                              FormEmail(),

                              SizedBox(height: 12.0),

                              FormSenha(),

                              SizedBox(height: 12.0),

                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Esqueceu a senha?',
                                  style: TextStyle(
                                      color: colorPrimary,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                  ),
                                ),
                              ),

                              SizedBox(height: 36.0),

                              ButtonLogin(),

                              SizedBox(height: 12.0),

                              ButtonCriarConta(),

                              SizedBox(height: 36.0),

                              Container(
                                  child: Text(
                                    "© Todos direitos reservados - SOS Estude - 2021",
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        color: colorPrimary,
                                        fontWeight: FontWeight.w200,
                                    ),
                                  ),
                              ),

                              SizedBox(height: 36.0),

                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
