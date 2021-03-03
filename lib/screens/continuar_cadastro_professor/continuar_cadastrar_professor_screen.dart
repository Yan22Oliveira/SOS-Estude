import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sos_estude/models/user_manager.dart';
import 'componentes/buttons/button_finalizar.dart';
import 'componentes/forms/form_agencia.dart';
import 'componentes/forms/form_conta.dart';
import 'componentes/forms/form_pix.dart';
import 'componentes/opcao_receber_pix/opcao_receber_pix.dart';
import 'componentes/selecao/selecao_intituicao.dart';


class ContinuarCadastrarProfessorScreen extends StatefulWidget {
  @override
  _ContinuarCadastrarProfessorScreenState createState() => _ContinuarCadastrarProfessorScreenState();
}

class _ContinuarCadastrarProfessorScreenState extends State<ContinuarCadastrarProfessorScreen> {


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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  SizedBox(height: 24),

                                  Container(

                                    child: Row(

                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [

                                        OpcaoReceberPix(),

                                        Container(
                                          alignment: AlignmentDirectional.center,
                                          child: Image.asset(
                                            "images/pix.png",
                                            fit: BoxFit.fitWidth,
                                            alignment: Alignment.center,
                                            height: 110,
                                          ),
                                        ),

                                      ],

                                    ),

                                  ),

                                  FormPIX(),

                                  SizedBox(height: 36),

                                  Container(
                                    alignment: Alignment.centerLeft,

                                    child: Text(
                                      "Dados Bancários:",
                                      style: TextStyle(
                                        color: colorAux,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 12,),

                                  FormAgencia(),

                                  const SizedBox(height: 12,),

                                  FormConta(),

                                  const SizedBox(height: 12,),

                                  SelecaoIntituicao(),

                                  SizedBox(height: 48),

                                  ButtonFinalizar(),

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

      },

    );
  }
}
