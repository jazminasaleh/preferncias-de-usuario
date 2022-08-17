import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  //late: es que cuando se va autilizar ya va a estra inicializada
  static late SharedPreferences _prefs;
  static String _name = '';
  static bool _isDarkmode = false;
  static int _gender = 1;

  static Future init() async {
    //sirve para almacenar fisicamante en el dispositivo 
    _prefs = await SharedPreferences.getInstance();
  }

//se lee y almacena la info fisicmante en el dispositivo
  static String get name {
    return _prefs.getString('name') ?? _name;
  }

//se almacena en el dispostivo
  static set name(String name) {
    _name = name;
    _prefs.setString('name', name);
  }

  static bool get isDarkmode {
    return _prefs.getBool('isDarkmode') ?? _isDarkmode;
  }

  static set isDarkmode(bool isDarkmode) {
    _isDarkmode = isDarkmode;
    _prefs.setBool('isDarkmode', isDarkmode);
  }
   static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int gender) {
    _gender = gender;
    _prefs.setInt('gender', gender);
  }
}
