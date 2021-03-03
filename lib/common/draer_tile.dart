import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sos_estude/models/page_manager.dart';

class DrawerTile extends StatelessWidget {

  const DrawerTile({this.iconData, this.title, this.page});

  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    final int curPage = context.watch<PageManager>().page;

    final colorAux = Color(0xFFF55F44);

    return Material(

      color: Colors.white,

      child: InkWell(
        onTap: (){
          context.read<PageManager>().setPage(page);
        },
        child: SizedBox(
          height: 60,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Icon(
                  iconData,
                  size: 32,
                  color: curPage == page ? colorAux : Colors.grey[700],
                ),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: curPage == page ? colorAux : Colors.grey[700]
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}