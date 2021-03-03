import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'componentes/buttons/button_continuar.dart';
import 'componentes/forms/form_cpf.dart';
import 'componentes/forms/form_data_nascimento.dart';
import 'componentes/forms/form_nome.dart';
import 'componentes/selecao/selecao_disciplinas.dart';
import 'componentes/selecao/selecao_graduacao.dart';

class CadastrarProfessorScreen extends StatefulWidget {
  @override
  _CadastrarProfessorScreenState createState() => _CadastrarProfessorScreenState();
}

class _CadastrarProfessorScreenState extends State<CadastrarProfessorScreen> {

  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,
      key: scaffoldKey,

      appBar: AppBar(

        backgroundColor: Colors.white,
        title: Text(
          "Cadastrar Professor",
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
                            horizontal: 36,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              SizedBox(height: 56),

                              FormNome(),

                              SizedBox(height: 12),

                              FormCPF(),

                              SizedBox(height: 12),

                              FormDataNascimento(),

                              SizedBox(height: 12),

                              SelecaoGraduacao(),

                              SizedBox(height: 12),

                              SelecaoDisciplinas(),

                              SizedBox(height: 48),

                              ButtonContinuar(),

                              SizedBox(height: 36),

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
