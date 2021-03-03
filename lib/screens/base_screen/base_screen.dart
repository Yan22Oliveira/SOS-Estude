import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sos_estude/models/page_manager.dart';
import 'package:sos_estude/screens/home/home_screen.dart';
import 'package:sos_estude/screens/ministrar_aulas/ministar_aulas_screen.dart';
import 'package:sos_estude/screens/pagamentos/pagamentos_screen.dart';
import 'package:sos_estude/screens/perfil/perfil_screen.dart';
import 'package:sos_estude/screens/portal_professor/portal_professor_screen.dart';

class BaseScreen extends StatefulWidget {

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {

  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeScreen(),
          PortalProfessorScreen(),
          MinistrarAulasScreen(),
          PagamentosScreen(),
          PerfilScreen(),
          
        ],
      ),
    );
  }
}
