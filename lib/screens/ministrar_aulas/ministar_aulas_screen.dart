import 'package:flutter/material.dart';
import 'package:sos_estude/common/custom_drawer.dart';

import 'componentes/buttons/buttons.dart';
import 'componentes/chat/chat_screen.dart';

class MinistrarAulasScreen extends StatelessWidget {

  final colorPrimary = Color(0xFF6C63FF);
  final colorAux = Color(0xFFF55F44);

  @override
  Widget build(BuildContext context) {

    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    return Scaffold(

      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: colorPrimary),
        title: Text(
          "Aula de IHM",
          style: TextStyle(
              color: colorPrimary
          ),
        ),
        centerTitle: true,
      ),

      body: Container(

        width: largura,

        child: Row(

          children: [

            Expanded(

              flex: 4,

              child: Container(
                height: altura,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Container(
                            height: altura/1.5,
                            color: Colors.grey[400],
                            child: Center(
                              child: Icon(
                                Icons.play_circle_outline_outlined,
                                color: Colors.deepOrange,
                                size: 100,
                              ),
                            ),
                          ),

                          const SizedBox(height: 8,),

                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                              child: Buttons(),
                          ),

                          const SizedBox(height: 16,),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

            if(largura>850)
            Expanded(

              flex: 2,

              child: Container(
                height: altura,
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        const SizedBox(height: 16,),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Chat da Aula",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          //color: Colors.grey[300],
                          padding: EdgeInsets.all(8),
                          child: ChatScreen(),
                        ),
                      ),
                    ),


                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: colorPrimary,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: TextFormField(
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      isDense: true,
                                      hintText: 'Digite a sua mensagem',
                                      hintStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w300
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 4,),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: colorPrimary,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(Icons.east,color: Colors.white,),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )

          ],
        ),

      ),

    );

  }
}
