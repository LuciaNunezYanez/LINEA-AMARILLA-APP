import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/registro/registro_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';

// Valores de las preguntas

var preg11 = 0;
var preg12 = 0;
var preg13 = 0;
var preg14 = 0;
var preg15 = 0;

class CardInformacionInventario3 extends StatefulWidget {
  @override
  State<CardInformacionInventario3> createState() =>
      _CardInformacionInventario3State();
}

class _CardInformacionInventario3State
    extends State<CardInformacionInventario3> {
  @override
  Widget build(BuildContext context) {
    var blocRegistro = BlocProvider.of<RegistroBloc>(context);

    return Card(
      elevation: 2.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                                '11. ¿Sabe si alguien de su familia ha intentado suicidarse alguna vez?'),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      ToggleSwitch(
                        initialLabelIndex: preg11,
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
                          preg11 = index ?? 0;
                          blocRegistro.add(OnGuardarInventario(p11: preg11));
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                                '12. ¿Alguna vez se ha sentido tan enfadado/a que habría sido capaz de matar a alguien?'),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      ToggleSwitch(
                        initialLabelIndex: preg12,
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
                          preg12 = index ?? 0;
                          blocRegistro.add(OnGuardarInventario(p12: preg12));
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('13. ¿Ha pensado alguna vez en suicidarse?'),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      ToggleSwitch(
                        initialLabelIndex: preg13,
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
                          preg13 = index ?? 0;
                          blocRegistro.add(OnGuardarInventario(p13: preg13));
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                                '14. ¿Le ha comentado a alguien, en alguna ocasión, que quería suicidarse?'),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      ToggleSwitch(
                        initialLabelIndex: preg14,
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
                          preg14 = index ?? 0;
                          blocRegistro.add(OnGuardarInventario(p14: preg14));
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                                '15. ¿Ha intentado alguna vez quitarse la vida?'),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      ToggleSwitch(
                        initialLabelIndex: preg15,
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
                          preg15 = index ?? 0;
                          blocRegistro.add(OnGuardarInventario(p15: preg15));
                        },
                      ),
                    ],
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
