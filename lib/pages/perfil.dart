import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/login/login_bloc.dart';
import 'package:linea_amarilla/blocs/share_pref/login.preferences.dart';
import 'package:linea_amarilla/pages/login.dart';
import 'package:linea_amarilla/widgets/drawer.dart';

class PerfilPage extends StatefulWidget {
  PerfilPage({Key? key}) : super(key: key);

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  final LoginPreferences _loginPreferences = LoginPreferences();
  // Controladores
  // Datos personales
  TextEditingController txtGenero = TextEditingController();
  TextEditingController txtFNacimiento = TextEditingController();

  // Dirección
  TextEditingController txtCalle = TextEditingController();
  TextEditingController txtNumeroExt = TextEditingController();
  TextEditingController txtNumeroInt = TextEditingController();
  TextEditingController txtColonia = TextEditingController();
  TextEditingController txtCP = TextEditingController();
  TextEditingController txtEntreCalles = TextEditingController();
  TextEditingController txtEstado = TextEditingController();
  TextEditingController txtMunicipio = TextEditingController();
  TextEditingController txtLocalidad = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Datos personales
    txtGenero.value = TextEditingValue(text: _loginPreferences.generoPersona);
    txtFNacimiento.value =
        TextEditingValue(text: _loginPreferences.nacimientoPersona);

    // Dirección
    txtCalle.value = TextEditingValue(text: _loginPreferences.calle);
    txtNumeroExt.value =
        TextEditingValue(text: _loginPreferences.numeroExterior);
    txtNumeroInt.value =
        TextEditingValue(text: _loginPreferences.numeroInterior);
    txtColonia.value = TextEditingValue(text: _loginPreferences.colonia);
    txtCP.value = TextEditingValue(text: _loginPreferences.cp);
    txtEntreCalles.value = TextEditingValue(text: _loginPreferences.entreCalle);
    txtEstado.value = TextEditingValue(text: _loginPreferences.nombreEstado);
    txtMunicipio.value =
        TextEditingValue(text: _loginPreferences.nombreMunicipio);
    txtLocalidad.value = TextEditingValue(text: _loginPreferences.localidad);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Perfil",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 247, 209, 63),
        elevation: 0.0,
      ),
      backgroundColor: Color.fromARGB(255, 247, 209, 63),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              color: Color.fromARGB(255, 247, 209, 63),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/carnet.png',
                      height: 90,
                    ),
                    Text(
                      _loginPreferences.nombrePersona.toString().toUpperCase() +
                          ' ' +
                          _loginPreferences.apPaternoPersona
                              .toString()
                              .toUpperCase() +
                          ' ' +
                          _loginPreferences.apMaternoPersona
                              .toString()
                              .toUpperCase(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _loginPreferences.correoPersona,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _loginPreferences.telefonoPersona,
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.75,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 35, right: 35, top: 10),
                child: Column(
                  children: [
                    // Image.asset('assets/images/fondo_gris_oscuro.jpeg'),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtGenero,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Género'),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 105, 212, 73),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtFNacimiento,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Fecha de nacimiento'),
                        prefixIcon: Icon(
                          Icons.event,
                          color: Color.fromARGB(255, 105, 212, 73),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtCalle,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Calle'),
                        prefixIcon: Icon(
                          Icons.add_road,
                          color: Color.fromARGB(255, 123, 52, 141),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtNumeroExt,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Número exterior'),
                        prefixIcon: Icon(
                          Icons.pin,
                          color: Color.fromARGB(255, 123, 52, 141),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtNumeroInt,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Número interior'),
                        prefixIcon: Icon(
                          Icons.money_outlined,
                          color: Color.fromARGB(255, 123, 52, 141),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtColonia,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Colonia'),
                        prefixIcon: Icon(
                          Icons.maps_home_work,
                          color: Color.fromARGB(255, 123, 52, 141),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtCP,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Código postal'),
                        prefixIcon: Icon(
                          Icons.markunread_mailbox,
                          color: Color.fromARGB(255, 123, 52, 141),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtEntreCalles,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Entre calles'),
                        prefixIcon: Icon(
                          Icons.map_outlined,
                          color: Color.fromARGB(255, 123, 52, 141),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtEstado,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Estado'),
                        prefixIcon: Icon(
                          Icons.apartment_rounded,
                          color: Color.fromARGB(255, 123, 52, 141),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtMunicipio,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Municipio'),
                        prefixIcon: Icon(
                          Icons.location_city,
                          color: Color.fromARGB(255, 123, 52, 141),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      controller: txtLocalidad,
                      enabled: false,
                      decoration: const InputDecoration(
                        label: Text('Localidad'),
                        prefixIcon: Icon(
                          Icons.place,
                          color: Color.fromARGB(255, 123, 52, 141),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        'Si desea actualizar su información comuniquese al número 01800BLABLA.',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w300
                                // color: Colors.green[700],
                                ))
                  ],
                ),
              ),
            ),
            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state.idPersona == 0) {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('login', (route) => false);
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                height: 70,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<LoginBloc>(context).add(OnCerrarSesion());

                      Navigator.of(context).pushNamedAndRemoveUntil(
                          'login', (Route<dynamic> route) => false);
                    },
                    child: Text('         CERRAR SESIÓN         ',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 222, 34, 140))),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: DrawerPrincipal(),
    );
  }
}
