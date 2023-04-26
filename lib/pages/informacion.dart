import 'package:flutter/material.dart';
import 'package:linea_amarilla/widgets/drawer.dart';

class InformacionPage extends StatelessWidget {
  const InformacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Información",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 247, 209, 63),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                height: 20,
              ),
              Text(
                'Esta es una app de prevención del suicidio, diseñada especialmente para brindarte apoyo y contención en los momentos más difíciles. Sabemos que la vida puede presentarnos situaciones complicadas y dolorosas, pero no estás solo/a. Nuestra app cuenta con un equipo de profesionales altamente capacitados en el área de la salud mental, que están dispuestos a escucharte y acompañarte en todo momento.\nAquí podrás encontrar apoyo psicológico y asesoría psiquiátrica de manera confidencial, accesible y oportuna. Juntos podemos superar este momento difícil y encontrar una luz en el camino.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      drawer: DrawerPrincipal(),
      bottomNavigationBar: Container(
        child: Text(
          'Aviso de privacidad',
          textAlign: TextAlign.center,
          style: TextStyle(decoration: TextDecoration.underline),
        ),
        height: 50,
      ),
    );
  }
}
