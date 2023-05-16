import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/registro/registro_bloc.dart';
import 'package:linea_amarilla/blocs/share_pref/login.preferences.dart';
import 'package:linea_amarilla/helpers/mostrar_alerta.dart';
import 'package:linea_amarilla/helpers/mostrar_uso_inf.dart';
import 'package:linea_amarilla/pages/inicio.dart';
import 'package:linea_amarilla/pages/login.dart';
import 'package:linea_amarilla/widgets/Inf_inventario_1.widget.dart';
import 'package:linea_amarilla/widgets/Inf_inventario_2.widget%20.dart';
import 'package:linea_amarilla/widgets/widgets.dart';

// final List<String> imgList = [
//   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
// ];

final List<Widget> imgWdgets = [
  CardInformacionInventario1(),
  CardInformacionInventario2(),
  CardInformacionInventario3(),
  CardInformacionPersonal(),
  CardInformacionDireccion(),
  CardReferencias()
];

class RegistroPageFull extends StatefulWidget {
  const RegistroPageFull({Key? key}) : super(key: key);

  @override
  State<RegistroPageFull> createState() => _RegistroFullPageState();
}

class _RegistroFullPageState extends State<RegistroPageFull> {
  @override
  Widget build(BuildContext context) {
    var blocRegistro = BlocProvider.of<RegistroBloc>(context);

    return BlocListener<RegistroBloc, RegistroState>(
        listener: (context, state) async {
          if (state.registroExitoso > 0) {
            // El registro ha sido exitoso.
            mostrarAlerta(
              context,
              'Registro exitoso',
              'Por favor inicie sesión',
              'Aceptar',
              funcion: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            );
          } else if (state.registroExitoso == -1) {
            // Mostrar error, cerrar ventana y poner en 0 de nuevo
            mostrarAlerta(context, '', state.mensajeError, 'Ok');
            blocRegistro.add(OnCambiarRegistroExitoso(0));
          }
        },
        child: CarouselChangeReasonDemo()
        // body: ExpandableTheme(
        //   data: const ExpandableThemeData(
        //     iconColor: Colors.yellow,
        //     useInkWell: true,
        //   ),
        //   child: BlocBuilder<RegistroBloc, RegistroState>(
        //     builder: (context, state) {
        //       return ListView(
        //         physics: const BouncingScrollPhysics(),
        //         children: <Widget>[
        //           const SizedBox(
        //             height: 20,
        //           ),
        //           (state.regInventario)
        //               ? CardInformacionInventario()
        //               : Container(),
        //           (state.regPersonal) ? CardInformacionPersonal() : Container(),
        //           (state.regDomicilio)
        //               ? CardInformacionDireccion()
        //               : Container(),
        //           (state.regReferencias) ? CardReferencias() : Container(),
        //         ],
        //       );
        //     },
        //   ),
        // ),
        //body: KeepPageviewPositionDemo(),

        );
  }
}

class CarouselChangeReasonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselChangeReasonDemoState();
  }
}

class _CarouselChangeReasonDemoState extends State<CarouselChangeReasonDemo> {
  String reason = '';
  final CarouselController _controller = CarouselController();

  void onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      reason = changeReason.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "¡Quiero registrarme!",
          style: TextStyle(color: Colors.white),
        ),
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
        backgroundColor: Color.fromARGB(255, 247, 209, 63),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/fondo_colores.png"),
              alignment: Alignment.center,
              opacity: 0.60,
              fit: BoxFit.fitHeight,
              repeat: ImageRepeat.noRepeat),
          // color: Color.fromARGB(255, 254, 212, 48),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    onPageChanged: onPageChange,
                    autoPlay: false,
                    height: MediaQuery.of(context).size.height * 0.85),
                carouselController: _controller,
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: _btnInfo()
    );
  }
}

Container _btnInfo() {
  return Container(
    margin: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
    child: ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey[500])),
      child: const Text(
        '¿Cómo será utilizada mi información?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    ),
  );
}

final List<Widget> imageSliders = imgWdgets
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(children: [item]
                    // <Widget>[
                    //   Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    //   Positioned(
                    //     bottom: 0.0,
                    //     left: 0.0,
                    //     right: 0.0,
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         gradient: LinearGradient(
                    //           colors: [
                    //             Color.fromARGB(200, 0, 0, 0),
                    //             Color.fromARGB(0, 0, 0, 0)
                    //           ],
                    //           begin: Alignment.bottomCenter,
                    //           end: Alignment.topCenter,
                    //         ),
                    //       ),
                    //       padding: EdgeInsets.symmetric(
                    //           vertical: 10.0, horizontal: 20.0),
                    //       child: Text(
                    //         'No. ${imgList.indexOf(item)} image',
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 20.0,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ],
                    )),
          ),
        ))
    .toList();
