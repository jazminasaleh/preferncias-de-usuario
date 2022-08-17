import 'package:flutter/material.dart';
import 'package:preferncias_de_usuario/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String routesName = 'Home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      //Para dibujar la barra lateral del menu
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tema oscuro/claro: '),
          Divider(),
          Text('Género: '),
          Divider(),
          Text('Nombre de usuario: '),
          Divider(),
        ],
      )
    );
  }
}
