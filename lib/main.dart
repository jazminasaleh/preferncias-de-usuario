import 'package:flutter/material.dart';
import 'package:preferncias_de_usuario/providers/theme_provider.dart';
import 'package:preferncias_de_usuario/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
   MultiProvider(
    providers: [
      ChangeNotifierProvider(create: ( _ ) => ThemeProvider(isDarkmode: Preferences.isDarkmode))
    ],
    child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routesName,
      routes: {
        HomeScreen.routesName: (_) => const HomeScreen(),
        SettingsScreen.routesName: (_) => const SettingsScreen()
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme
    );
  }
}
