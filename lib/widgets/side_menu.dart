import 'package:flutter/material.dart';
import 'package:preferncias_de_usuario/screens/home_screen.dart';
import 'package:preferncias_de_usuario/screens/settings_screens.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawerHeader(),
          //lista del meno
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routesName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_outlined),
            title: const Text('People'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, SettingsScreen.routesName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.close_rounded),
            title: const Text('Cerrar'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

//Dibujar la parte de arriba del menu
class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover)),
    );
  }
}
