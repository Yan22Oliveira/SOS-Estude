import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sos_estude/models/user_manager.dart';
import 'componentes/buttons/button_continuar.dart';
import 'componentes/forms/form_email.dart';
import 'componentes/forms/form_repetir_senha.dart';
import 'componentes/forms/form_senha.dart';
import 'componentes/opcao_de_cadastro/opcao_de_cadastro.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  @override
  Widget build(BuildContext context) {

    return Consumer<UserManager>(

      builder: (_,userManager,__){

        return Scaffold(

          backgroundColor: Colors.white,

          appBar: AppBar(

            backgroundColor: Colors.white,
            title: Text(
              "Criar Conta",
              style: TextStyle(
                color: colorPrimary,
              ),
            ),
            centerTitle: true,
            iconTheme: IconThemeData(color: colorPrimary),

          ),

          body: Center(

            child: Container(

              width: 500,

              child: Form(

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

                                  SizedBox(height: 56),

                                  FormEmail(),

                                  SizedBox(height: 12.0),

                                  FormSenha(),

                                  SizedBox(height: 12.0),

                                  FormRepetirSenha(),

                                  SizedBox(height: 48.0),

                                  Container(

                                    child: Row(

                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [

                                        OpcaoDeCadastro(),

                                        Container(
                                          alignment: AlignmentDirectional.center,
                                          child: Image.asset(
                                            "images/criar_conta.png",
                                            fit: BoxFit.cover,
                                            alignment: Alignment.center,
                                            height: 160,
                                            width: 156,
                                          ),
                                        ),

                                      ],

                                    ),

                                  ),

                                  SizedBox(height: 48.0),

                                  ButtonContinuar(),

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

      },

    );
  }
}
