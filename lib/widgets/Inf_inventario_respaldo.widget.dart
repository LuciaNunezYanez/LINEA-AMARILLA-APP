// import 'package:expandable/expandable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:linea_amarilla/blocs/registro/registro_bloc.dart';
// import 'package:toggle_switch/toggle_switch.dart';

// // Valores de las preguntas
// var preg1 = 0;
// var preg2 = 0;
// var preg3 = 0;
// var preg4 = 0;
// var preg5 = 0;
// var preg6 = 0;
// var preg7 = 0;
// var preg8 = 0;
// var preg9 = 0;
// var preg10 = 0;
// var preg11 = 0;
// var preg12 = 0;
// var preg13 = 0;
// var preg14 = 0;
// var preg15 = 0;

// class CardInformacionInventario extends StatefulWidget {
//   @override
//   State<CardInformacionInventario> createState() =>
//       _CardInformacionInventarioState();
// }

// class _CardInformacionInventarioState extends State<CardInformacionInventario> {
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
//                     [Colors.teal],
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
//                     [Colors.teal],
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
//                     [Colors.teal],
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
//                     [Colors.teal],
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
//                     [Colors.teal],
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
//                 ToggleSwitch(
//                   initialLabelIndex: preg6,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Colors.teal],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg6 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text('7. ¿Ve su futuro sin ninguna esperanza?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg7,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Colors.teal],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg7 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                           '8. ¿Se ha sentido alguna vez tan fracasado/a que sólo quería meterse en la cama y abandonarlo todo?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg8,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Colors.teal],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg8 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text('9. ¿Está deprimido/a ahora?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg9,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Colors.teal],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg9 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                           '10. ¿Está usted separado/a, divorciado/a o viudo/a?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg10,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Colors.teal],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg10 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                           '11. ¿Sabe si alguien de su familia ha intentado suicidarse alguna vez?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg11,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Colors.teal],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg11 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                           '12. ¿Alguna vez se ha sentido tan enfadado/a que habría sido capaz de matar a alguien?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg12,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Colors.teal],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg12 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text('13. ¿Ha pensado alguna vez en suicidarse?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg13,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Colors.teal],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg13 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                           '14. ¿Le ha comentado a alguien, en alguna ocasión, que quería suicidarse?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg14,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Colors.teal],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg14 = index ?? 0;
//                   },
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text('15. ¿Ha intentado alguna vez quitarse la vida?'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                     ],
//                   ),
//                 ),
//                 ToggleSwitch(
//                   initialLabelIndex: preg15,
//                   customWidths: [50.0, 50.0],
//                   cornerRadius: 20.0,
//                   activeBgColors: [
//                     [Colors.teal],
//                     [Colors.redAccent]
//                   ],
//                   activeFgColor: Colors.white,
//                   inactiveBgColor: Colors.grey,
//                   inactiveFgColor: Colors.white,
//                   totalSwitches: 2,
//                   labels: ['No', 'Si'],
//                   icons: [null, null],
//                   onToggle: (index) {
//                     preg15 = index ?? 0;
//                   },
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
//                             BlocProvider.of<RegistroBloc>(context)
//                                 .add(OnGuardarInventario(
//                               p1: preg1,
//                               p2: preg2,
//                               p3: preg3,
//                               p4: preg4,
//                               p5: preg5,
//                               p6: preg6,
//                               p7: preg7,
//                               p8: preg8,
//                               p9: preg9,
//                               p10: preg10,
//                               p11: preg11,
//                               p12: preg12,
//                               p13: preg13,
//                               p14: preg14,
//                               p15: preg15,
//                             ));

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
