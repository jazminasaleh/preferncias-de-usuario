import 'package:flutter/material.dart';
import 'package:preferncias_de_usuario/widgets/side_menu.dart';

class SettingsScreen extends StatelessWidget {
    static const String routesName = 'Settings';
  const SettingsScreen({Key? key}) : super(key: key);
  
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
              const Text('Ajustes', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
              Divider(),
              //para cambiar a tema claro o oscuro
              SwitchListTile(
                value: true, 
                title: Text('Tema'),
                onChanged: (value){
                }
              ),
              Divider(),
              //Las bolitas para seleccionar si es masculino o femenino
              RadioListTile<int>(
                value: 1, 
                groupValue: 1, 
                title: Text('Masculino'),
                onChanged: (value){

                }
              ),
               Divider(),
              RadioListTile<int>(
                value: 2, 
                groupValue: 1, 
                title: Text('Femenino'),
                onChanged: (value){

                }
              ),
              Divider(),
              //Para escribir el nombre del usuario
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Jasmin',
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del uusario'
                  ),
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}
