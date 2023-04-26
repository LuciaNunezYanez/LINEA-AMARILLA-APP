import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/registro/registro_bloc.dart';
import 'package:linea_amarilla/blocs/share_pref/login.preferences.dart';
import 'package:linea_amarilla/pages/informacion.dart';
import 'package:linea_amarilla/pages/inicio.dart';
import 'package:linea_amarilla/pages/loading.dart';
import 'package:linea_amarilla/pages/login.dart';
import 'package:linea_amarilla/pages/perfil.dart';
import 'package:linea_amarilla/pages/registro.dart';
import 'package:linea_amarilla/pages/registro.full.dart';

import 'blocs/login/login_bloc.dart';

void main() async {
  // No iniciar la app hasta que las prefencias no esten listas
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializar las preferencias
  final prefsLogin = LoginPreferences();
  await prefsLogin.initPrefs();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => RegistroBloc(),
      ),
      BlocProvider(
        create: (context) => LoginBloc(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: LoadingPage(),
      initialRoute: 'loading',
      routes: {
        'inicio': (_) => InicioPage(),
        'perfil': (_) => PerfilPage(),
        'informacion': (_) => InformacionPage(),
        'login': (_) => LoginPage(),
        'registro': (_) => RegistroPageFull(),
        'loading': (_) => LoadingPage(),
      },
    );
  }
}
