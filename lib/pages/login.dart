import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/login/login_bloc.dart';
import 'package:linea_amarilla/helpers/mostrar_alerta.dart';
import 'package:linea_amarilla/helpers/mostrar_bienvenida.dart';
import 'package:linea_amarilla/pages/inicio.dart';
import 'package:linea_amarilla/pages/registro.dart';
import 'package:linea_amarilla/pages/registro.full.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _keyFormLogin = GlobalKey<FormState>();
  var correoController = TextEditingController();
  var contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var loginBloc = BlocProvider.of<LoginBloc>(context);
    loginBloc.add(OnCambiarIDPersona(0));

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.idPersona > 0) {
          // El login ha sido exitoso. Pasar a la pantalla principal.
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => InicioPage()));
        } else if (state.idPersona == -1) {
          // Mostrar error, cerrar ventana y poner en 0 de nuevo
          mostrarAlerta(context, '', 'Por favor valide sus datos.', 'Ok');
          loginBloc.add(OnCambiarIDPersona(0));
        }
      },
      child: Scaffold(
        body: Container(
          // color: Color.fromARGB(255, 170, 195, 189),
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/images/fondo_colores.png"),
                alignment: Alignment.center,
                // opacity: 0.10,
                fit: BoxFit.fitHeight,
                repeat: ImageRepeat.noRepeat),
            // color: Color.fromARGB(255, 254, 212, 48),
            shape: BoxShape.rectangle,
          ),
          child: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              elevation: 10.0,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.height * 0.40,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  // color: Colors.yellow[100],
                  child: Form(
                    key: _keyFormLogin,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset('assets/images/LOGO_GOBIERNO.png',
                              height: 60),
                        ),
                        Image.asset('assets/images/drawerLA.png', height: 120),
                        SizedBox(
                          height: 20,
                        ),
                        // Text(
                        //   'LINEA AMARILLA',
                        //   style: TextStyle(
                        //       fontSize: 20, fontWeight: FontWeight.bold),
                        // ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: correoController,
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: 'Correo electrónico',
                              // icon: Icon(Icons.alternate_email),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: contrasenaController,
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: 'Contraseña',
                              // icon: Icon(Icons.password)
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              if (correoController.text.isNotEmpty &&
                                  contrasenaController.text.isNotEmpty) {
                                // Hacer login
                                BlocProvider.of<LoginBloc>(context).add(OnLogin(
                                    correoController.text,
                                    contrasenaController.text));
                              } else {
                                // Alerta de ingresar ambos campos
                                mostrarAlerta(context, '',
                                    'Por favor ingrese ambos campos', 'Ok');
                              }
                            },
                            child: Text(
                              'INICIAR SESIÓN',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 254, 212, 48))),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RegistroPageFull()));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: const Text(
                            '¡Quiero registrarme!',
                            style: TextStyle(
                                // decoration: TextDecoration.underline,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/pie.png'),
                    fit: BoxFit.cover)),
            padding: EdgeInsets.only(bottom: 10, top: 10),
            // color: Color.fromARGB(  255, 170, 195, 189),
            height: 50,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  mostrarBienvenida(
                      context,
                      '',
                      'Bienvenido/a a nuestra app de prevención del suicidio, diseñada especialmente para brindarte apoyo y contención en los momentos más difíciles. Sabemos que la vida puede presentarnos situaciones complicadas y dolorosas, pero no estás solo/a. Nuestra app cuenta con un equipo de profesionales altamente capacitados en el área de la salud mental, que están dispuestos a escucharte y acompañarte en todo momento. Aquí podrás encontrar apoyo psicológico y asesoría psiquiátrica de manera confidencial, accesible y oportuna. Si estás luchando contra pensamientos suicidas, te invitamos a que te registres y te conectes con nuestra comunidad de apoyo. Juntos podemos superar este momento difícil y encontrar una luz en el camino.',
                      'Registrarme');
                },
                child: Text(
                  'Información',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 46, 178, 222))),
              ),
            )),
      ),
    );
  }
}
