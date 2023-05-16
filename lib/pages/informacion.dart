import 'package:flutter/material.dart';
import 'package:linea_amarilla/helpers/mostrar_uso_inf.dart';
import 'package:linea_amarilla/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class InformacionPage extends StatefulWidget {
  const InformacionPage({super.key});

  @override
  State<InformacionPage> createState() => _InformacionPageState();
}

class _InformacionPageState extends State<InformacionPage> {
  Future<void>? _launched;

  Future<void> _lanzarNavegador(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'No se puede lanzar $url';
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
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
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Información",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 247, 209, 63),
          elevation: 0.0,
          actions: [
            ElevatedButton(
              onPressed: () {
                mostrarUsoInformacion(
                    context,
                    '',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                    'Acepto');
              },
              style: ElevatedButton.styleFrom(
                  shape: LinearBorder(),
                  backgroundColor: Color.fromARGB(255, 254, 212, 48)),
              child: const Text(
                '?',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/drawerLA.png', height: 100),
                    Image.asset('assets/images/LOGO_GOBIERNO.png', height: 100)
                  ],
                ),
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child:
                //       Image.asset('assets/images/LOGO_GOBIERNO.png', height: 80),
                // ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  'Esta es una app de prevención del suicidio, diseñada especialmente para brindarte apoyo y contención en los momentos más difíciles. Sabemos que la vida puede presentarnos situaciones complicadas y dolorosas, pero no estás solo/a. Nuestra app cuenta con un equipo de profesionales altamente capacitados en el área de la salud mental, que están dispuestos a escucharte y acompañarte en todo momento.\nAquí podrás encontrar apoyo psicológico y asesoría psiquiátrica de manera confidencial, accesible y oportuna. Juntos podemos superar este momento difícil y encontrar una luz en el camino.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                FutureBuilder<void>(future: _launched, builder: _launchStatus),
              ],
            ),
          ),
        ),
        drawer: DrawerPrincipal(),
        bottomNavigationBar: InkWell(
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: ListTile(
              title: Text(
                'Aviso de privacidad',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          onTap: () async {
            setState(() {
              _launched = _lanzarNavegador(
                  Uri.parse('https://twitter.com/Cibernetica_Dgo'));
            });
          },
        ),
      )
    ]);
  }
}
