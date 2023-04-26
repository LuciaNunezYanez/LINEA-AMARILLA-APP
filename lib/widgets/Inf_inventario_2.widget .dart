import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/registro/registro_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';

// Valores de las preguntas

var preg6 = 0;
var preg7 = 0;
var preg8 = 0;
var preg9 = 0;
var preg10 = 0;

class CardInformacionInventario2 extends StatefulWidget {
  @override
  State<CardInformacionInventario2> createState() =>
      _CardInformacionInventario2State();
}

class _CardInformacionInventario2State
    extends State<CardInformacionInventario2> {
  @override
  Widget build(BuildContext context) {
    var blocRegistro = BlocProvider.of<RegistroBloc>(context);

    return Card(
      elevation: 2.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  child: const Center(
                      child: Text(
                    '',
                    style: TextStyle(fontSize: 18),
                  )),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/inf_preguntas.jpg"),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        repeat: ImageRepeat.noRepeat),
                    color: Colors.yellow[200],
                    shape: BoxShape.rectangle,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            '6. ¿Se ha sentido alguna vez inútil o inservible?'),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: preg6,
                    customWidths: [50.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.teal],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['No', 'Si'],
                    icons: [null, null],
                    onToggle: (index) {
                      preg6 = index ?? 0;
                      blocRegistro.add(OnGuardarInventario(p6: preg6));
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('7. ¿Ve su futuro sin ninguna esperanza?'),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: preg7,
                    customWidths: [50.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.teal],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['No', 'Si'],
                    icons: [null, null],
                    onToggle: (index) {
                      preg7 = index ?? 0;
                      blocRegistro.add(OnGuardarInventario(p7: preg7));
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            '8. ¿Se ha sentido alguna vez tan fracasado/a que sólo quería meterse en la cama y abandonarlo todo?'),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: preg8,
                    customWidths: [50.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.teal],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['No', 'Si'],
                    icons: [null, null],
                    onToggle: (index) {
                      preg8 = index ?? 0;
                      blocRegistro.add(OnGuardarInventario(p8: preg8));
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('9. ¿Está deprimido/a ahora?'),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: preg9,
                    customWidths: [50.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.teal],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['No', 'Si'],
                    icons: [null, null],
                    onToggle: (index) {
                      preg9 = index ?? 0;
                      blocRegistro.add(OnGuardarInventario(p9: preg9));
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            '10. ¿Está usted separado/a, divorciado/a o viudo/a?'),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: preg10,
                    customWidths: [50.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.teal],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['No', 'Si'],
                    icons: [null, null],
                    onToggle: (index) {
                      preg10 = index ?? 0;
                      blocRegistro.add(OnGuardarInventario(p10: preg10));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
