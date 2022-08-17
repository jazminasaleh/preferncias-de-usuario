import 'package:flutter/material.dart';
import 'package:preferncias_de_usuario/providers/theme_provider.dart';
import 'package:preferncias_de_usuario/share_preferences/preferences.dart';
import 'package:preferncias_de_usuario/widgets/side_menu.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const String routesName = 'Settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  /*bool isDarkmode = false;
  int gender = 1;
  String name = 'Andrea';*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        //para dibujar el menu
        drawer: SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Ajustes',
                    style:
                        TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
                Divider(),
                //para cambiar a tema claro o oscuro
                SwitchListTile.adaptive(
                    value: Preferences.isDarkmode,
                    title: Text('Tema'),
                    onChanged: (value) {
                      Preferences.isDarkmode = value;
                      final themeProvider =
                          Provider.of<ThemeProvider>(context, listen: false);
                      value
                          ? themeProvider.setDarkMode()
                          : themeProvider.setLightMode();
                      setState(() {});
                    }),
                Divider(),
                //Las bolitas para seleccionar si es masculino o femenino
                RadioListTile<int>(
                    value: 1,
                    groupValue: Preferences.gender,
                    title: Text('Masculino'),
                    onChanged: (value) {
                      Preferences.gender = value ?? 1;
                      setState(() {});
                    }),
                Divider(),
                RadioListTile<int>(
                    value: 2,
                    groupValue: Preferences.gender,
                    title: Text('Femenino'),
                    onChanged: (value) {
                      Preferences.gender = value ?? 2;
                      setState(() {});
                    }),
                Divider(),
                //Para escribir el nombre del usuario
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: Preferences.name,
                    onChanged: (value) {
                      Preferences.name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        labelText: 'Nombre', helperText: 'Nombre del uusario'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
