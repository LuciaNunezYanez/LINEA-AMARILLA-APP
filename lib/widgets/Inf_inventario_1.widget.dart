import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/registro/registro_bloc.dart';
import 'package:linea_amarilla/widgets/Inf_inventario_3.widget.dart';
import 'package:toggle_switch/toggle_switch.dart';

// Valores de las preguntas
var preg1 = 0;
var preg2 = 0;
var preg3 = 0;
var preg4 = 0;
var preg5 = 0;

class CardInformacionInventario1 extends StatefulWidget {
  @override
  State<CardInformacionInventario1> createState() =>
      _CardInformacionInventario1State();
}

class _CardInformacionInventario1State
    extends State<CardInformacionInventario1> {
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
                    'INVENTARIO',
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
                  Text(
                    'Las siguientes preguntas tratan sobre cosas que usted ha sentido o hecho. Por favor, conteste cada pregunta.',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      '1. ¿Toma de forma habitual algún medicamento como aspirinas o pastillas para dormir?',
                      textAlign: TextAlign.justify),
                  SizedBox(
                    height: 5,
                  ),
                  ToggleSwitch(
                    initialLabelIndex: preg1,
                    customWidths: [50.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Color.fromARGB(255, 105, 212, 73)],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['No', 'Si'],
                    icons: [null, null],
                    onToggle: (index) {
                      preg1 = index ?? 0;
                      blocRegistro.add(OnGuardarInventario(p1: preg1));
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('2. ¿Tiene dificultades para conciliar el sueño?'),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: preg2,
                    customWidths: [50.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Color.fromARGB(255, 105, 212, 73)],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['No', 'Si'],
                    icons: [null, null],
                    onToggle: (index) {
                      preg2 = index ?? 0;
                      blocRegistro.add(OnGuardarInventario(p2: preg2));
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            '3. ¿A veces nota que podría perder el control sobre sí mismo/a?'),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: preg3,
                    customWidths: [50.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Color.fromARGB(255, 105, 212, 73)],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['No', 'Si'],
                    icons: [null, null],
                    onToggle: (index) {
                      preg3 = index ?? 0;
                      blocRegistro.add(OnGuardarInventario(p3: preg3));
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            '4. ¿Tiene poco interés en relacionarse con la gente?'),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: preg4,
                    customWidths: [50.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Color.fromARGB(255, 105, 212, 73)],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['No', 'Si'],
                    icons: [null, null],
                    onToggle: (index) {
                      preg4 = index ?? 0;
                      blocRegistro.add(OnGuardarInventario(p4: preg4));
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            '5. ¿Ve su futuro con más pesimismo que optimismo?'),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: preg5,
                    customWidths: [50.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Color.fromARGB(255, 105, 212, 73)],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['No', 'Si'],
                    icons: [null, null],
                    onToggle: (index) {
                      preg5 = index ?? 0;
                      blocRegistro.add(OnGuardarInventario(p5: preg5));
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

  // return ExpandableNotifier(
  //     child: Padding(
  //   padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
  //   child: ScrollOnExpand(
  //     child: Card(
  //       clipBehavior: Clip.antiAlias,
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           // Encabezado
  //           // Expandable(
  //           //   collapsed: encabezadoCollapsed(),
  //           //   expanded: encabezadoCollapsed(),
  //           // ),
  //           // Imagen
  //           Expandable(
  //             collapsed: imagenCollapsed(),
  //             expanded: imagenCollapsed(),
  //           ),
  //           // Contenido
  //           Expandable(
  //             collapsed: contenidoCollapsed(),
  //             expanded: contenidoExpanded(),
  //           ),
  //           Divider(
  //             height: 1,
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               Builder(
  //                 builder: (context) {
  //                   var controller =
  //                       ExpandableController.of(context, required: true)!;
  //                   return TextButton(
  //                     style: ButtonStyle(
  //                         backgroundColor:
  //                             MaterialStateProperty.all(Colors.black)),
  //                     child: Text(
  //                       controller.expanded ? "SIGUIENTE" : "RESPONDER",
  //                       style: TextStyle(color: Colors.white),
  //                     ),
  //                     onPressed: () {
  //                       if (controller.expanded) {
  //                         // Guardar la información
  //                         BlocProvider.of<RegistroBloc>(context).add(
  //                             OnGuardarInventario(
  //                                 p1: preg1,
  //                                 p2: preg2,
  //                                 p3: preg3,
  //                                 p4: preg4,
  //                                 p5: preg5));

  //                         // Muestra siguiente
  //                         BlocProvider.of<RegistroBloc>(context)
  //                             .add(OnDisenoPersonal());
  //                         controller.toggle();
  //                       } else {
  //                         controller.toggle();
  //                       }
  //                     },
  //                   );
  //                 },
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   ),
  // ));
}



// class _CardInformacionInventario1State
//     extends State<CardInformacionInventario1> {
//   @override
//   Widget build(BuildContext context) {
//     imagenCollapsed() {
//       return SizedBox(
//           height: 70,
//           width: MediaQuery.of(context).size.width,
//           child: Container(
//             child: Center(
//                 child: Text(
//               'INVENTARIO',
//               style: TextStyle(fontSize: 18),
//             )),
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/images/inf_preguntas.jpg"),
//                   alignment: Alignment.center,
//                   fit: BoxFit.cover,
//                   repeat: ImageRepeat.noRepeat),
//               color: Colors.yellow[200],
//               shape: BoxShape.rectangle,
//             ),
//           ));
//     }

//     contenidoCollapsed() {
//       return Container();
//     }

//     contenidoExpanded() {
//       return Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Column(
//               children: [
//                 Text(
//                   'Las siguientes preguntas tratan sobre cosas que usted ha sentido o hecho. Por favor, conteste cada pregunta.',
//                   style: TextStyle(fontSize: 15),
//                   textAlign: TextAlign.justify,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                     '1. ¿Toma de forma habitual algún medicamento como aspirinas o pastillas para dormir?',
//                     textAlign: TextAlign.justify),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg1,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Color.fromARGB(255,105, 212, 73)],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg1 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text('2. ¿Tiene dificultades para conciliar el sueño?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg2,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Color.fromARGB(255,105, 212, 73)],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg2 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                           '3. ¿A veces nota que podría perder el control sobre sí mismo/a?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg3,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Color.fromARGB(255,105, 212, 73)],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg3 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                           '4. ¿Tiene poco interés en relacionarse con la gente?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg4,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Color.fromARGB(255,105, 212, 73)],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg4 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text('5. ¿Ve su futuro con más pesimismo que optimismo?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg5,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Color.fromARGB(255,105, 212, 73)],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg5 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text('6. ¿Se ha sentido alguna vez inútil o inservible?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );
//     }

//     return ExpandableNotifier(
//         child: Padding(
//       padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//       child: ScrollOnExpand(
//         child: Card(
//           clipBehavior: Clip.antiAlias,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               // Encabezado
//               // Expandable(
//               //   collapsed: encabezadoCollapsed(),
//               //   expanded: encabezadoCollapsed(),
//               // ),
//               // Imagen
//               Expandable(
//                 collapsed: imagenCollapsed(),
//                 expanded: imagenCollapsed(),
//               ),
//               // Contenido
//               Expandable(
//                 collapsed: contenidoCollapsed(),
//                 expanded: contenidoExpanded(),
//               ),
//               Divider(
//                 height: 1,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Builder(
//                     builder: (context) {
//                       var controller =
//                           ExpandableController.of(context, required: true)!;
//                       return TextButton(
//                         style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all(Colors.black)),
//                         child: Text(
//                           controller.expanded ? "SIGUIENTE" : "RESPONDER",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         onPressed: () {
//                           if (controller.expanded) {
//                             // Guardar la información
//                             BlocProvider.of<RegistroBloc>(context).add(
//                                 OnGuardarInventario(
//                                     p1: preg1,
//                                     p2: preg2,
//                                     p3: preg3,
//                                     p4: preg4,
//                                     p5: preg5));

//                             // Muestra siguiente
//                             BlocProvider.of<RegistroBloc>(context)
//                                 .add(OnDisenoPersonal());
//                             controller.toggle();
//                           } else {
//                             controller.toggle();
//                           }
//                         },
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
