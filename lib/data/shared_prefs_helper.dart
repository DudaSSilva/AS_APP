import 'package:asapp/domain/usuario.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  getInstance(){
    return SharedPreferences.getInstance();
  }

  login() async {
    SharedPreferences sharedPrefs = await getInstance();
    await sharedPrefs.setBool('USUARIO', true);
  }

  logout() async {
    SharedPreferences sharedPrefs = await getInstance();
    await sharedPrefs.setBool('USUARIO', false);
  }

  Future<Usuario> getUserObject() async {
    SharedPreferences sharedPreferences = await getInstance();
    final usuario = sharedPreferences.get('USUARIO');

    return usuario as Future<Usuario>;
  }

  Future<bool> getUser() async {
    SharedPreferences sharedPrefs = await getInstance();
    bool? isLogged = sharedPrefs.getBool('USUARIO');

    return isLogged ?? false;

  }
}
