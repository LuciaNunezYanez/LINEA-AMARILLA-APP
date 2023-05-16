import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/login/login_bloc.dart';
import 'package:linea_amarilla/blocs/share_pref/login.preferences.dart';
import 'package:linea_amarilla/widgets/drawer.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    LoginPreferences _loginP = new LoginPreferences();

    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/fondo_opaco.jpg"),
              alignment: Alignment.center,
              // opacity: 0.5,
              fit: BoxFit.fitHeight,
              repeat: ImageRepeat.noRepeat),
          // color: Color.fromARGB(255, 254, 212, 48),
          shape: BoxShape.rectangle,
        ),
      ),
      // Image.asset(
      //   "assets/images/fondo_colores.png",
      //   // "assets/images/lazo.jpg",
      //   // color: Colors.white.withOpacity(.9), colorBlendMode: BlendMode.modulate,
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   fit: BoxFit.fitHeight,
      // ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Inicio',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 247, 209, 63),
        ),
        body: Container(
          // color: Color.fromARGB(255, 192, 13, 35),
          height: MediaQuery.of(context).size.height * 0.3,
          child: (_loginP.puntaje >= 6)
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    // color: Color.fromARGB(255, 170, 195, 189),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(15),
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '¡Gracias por registrarte!',
                          style: TextStyle(
                              color: Color.fromARGB(255, 52, 119, 1),
                              fontSize: 22),
                        ),
                        Text(
                          'EN UN MOMENTO NOS COMUNICAREMOS CONTIGO',
                          style: TextStyle(
                              color: Color.fromARGB(255, 247, 162, 36),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset('assets/images/alerta.png', height: 50)
                        // leading: Icon(Icons.person),
                      ],
                    ),
                  ),
                )
              : Container(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    // color: Color.fromARGB(255, 170, 195, 189),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(15),
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '¡Gracias por registrarte!',
                          style: TextStyle(
                              color: Color.fromARGB(255, 105, 212, 73),
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'DE SER NECESARIO NOS COMUNICAREMOS CONTIGO',
                          style: TextStyle(
                              color: Color.fromARGB(255, 222, 34, 140),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset('assets/images/corazon_v2.png', height: 50)
                        // leading: Icon(Icons.person),
                      ],
                    ),
                  ),
                ),
        ),
        drawer: DrawerPrincipal(),
      ),
    ]);
  }
}
