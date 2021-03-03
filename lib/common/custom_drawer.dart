import 'package:flutter/material.dart';
import 'custom_drawer_header.dart';
import 'draer_tile.dart';

class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          ListView(
            children: <Widget>[
              CustomDrawerHeader(),

              DrawerTile(
                iconData: Icons.home,
                title: 'Início',
                page: 0,
              ),

              DrawerTile(
                iconData: Icons.person_pin_sharp,
                title: 'Portal do Professor',
                page: 1,
              ),
              DrawerTile(
                iconData: Icons.videocam_rounded,
                title: 'Ministrar Aulas',
                page: 2,
              ),
              DrawerTile(
                iconData: Icons.credit_card_sharp,
                title: 'Pagamentos',
                page: 3,
              ),
              const Divider(),
              DrawerTile(
                iconData: Icons.person,
                title: 'Perfil',
                page: 4,
              ),

              const Divider(),

            ],
          ),
        ],
      ),
    );
  }
}
