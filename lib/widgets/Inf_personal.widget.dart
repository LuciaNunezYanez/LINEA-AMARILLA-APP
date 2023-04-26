import 'package:date_time_picker/date_time_picker.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/registro/registro_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';

var fechaNacimiento = '';
var genero = 'Hombre';
var generoInd = 0;

class CardInformacionPersonal extends StatefulWidget {
  @override
  State<CardInformacionPersonal> createState() =>
      _CardInformacionPersonalState();
}

class _CardInformacionPersonalState extends State<CardInformacionPersonal> {
  final GlobalKey<FormState> _keyFormPersonal = GlobalKey<FormState>();

  // Controladores del formulario
  var nombreController = TextEditingController();
  var paternoController = TextEditingController();
  var maternoController = TextEditingController();
  var correoController = TextEditingController();
  var contrasenaController = TextEditingController();
  var telefonoController = TextEditingController();

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
                    'INFORMACIÓN PERSONAL',
                    style: TextStyle(fontSize: 18),
                  )),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/inf_personal.jpg"),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        repeat: ImageRepeat.noRepeat),
                    color: Colors.yellow[200],
                    shape: BoxShape.rectangle,
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: [
                      // ElevatedButton(
                      //     onPressed: () {
                      //       blocRegistro.add(OnImprimir());
                      //     },
                      //     child: Text("Imprimir")),
                      TextFormField(
                        controller: nombreController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.face),
                          hintText: 'Nombre (Obligatorio)',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Campo obligatorio';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          blocRegistro
                              .add(OnGuardarPersonal(nombre_persona: value));
                        },
                      ),
                      TextFormField(
                        controller: paternoController,
                        decoration: const InputDecoration(
                          hintText: 'Apellido paterno (Obligatorio)',
                          icon: Icon(Icons.fingerprint),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Campo obligatorio';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          blocRegistro.add(
                              OnGuardarPersonal(ap_paterno_persona: value));
                        },
                      ),
                      TextFormField(
                        controller: maternoController,
                        decoration: const InputDecoration(
                          hintText: 'Apellido materno',
                          icon: Icon(Icons.badge_outlined),
                        ),
                        onChanged: (value) {
                          blocRegistro.add(
                              OnGuardarPersonal(ap_materno_persona: value));
                        },
                      ),
                      DateTimePicker(
                        type: DateTimePickerType.date,
                        dateMask: 'd MMM, yyyy',
                        // initialValue: DateTime.now().toString(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                        icon: Icon(Icons.event),
                        fieldLabelText: 'Fecha de nacimiento (Obligatoria)',
                        dateLabelText: 'Fecha de nacimiento (Obligatoria)',
                        cancelText: 'Cancelar',
                        confirmText: 'Seleccionar',
                        onChanged: (val) {
                          fechaNacimiento = val;
                          blocRegistro.add(OnGuardarPersonal(
                              nacimiento_persona: fechaNacimiento));
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Campo obligatorio';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ToggleSwitch(
                        minWidth: 100.0,
                        initialLabelIndex: generoInd,
                        cornerRadius: 20.0,
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        totalSwitches: 2,
                        labels: ['Hombre', 'Mujer'],
                        icons: [Icons.male, Icons.female],
                        activeBgColors: [
                          [Colors.blueAccent],
                          [Colors.pinkAccent]
                        ],
                        onToggle: (index) {
                          generoInd = index ?? 0;
                          if (index == 0) {
                            genero = 'Hombre';
                          } else {
                            genero = 'Mujer';
                          }
                          blocRegistro
                              .add(OnGuardarPersonal(genero_persona: genero));
                        },
                      ),
                      TextFormField(
                        controller: correoController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'Correo electrónico (Obligatorio)',
                          icon: Icon(Icons.alternate_email),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Campo obligatorio';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          blocRegistro
                              .add(OnGuardarPersonal(correo_persona: value));
                        },
                      ),
                      TextFormField(
                        controller: contrasenaController,
                        decoration: const InputDecoration(
                          hintText: 'Contraseña (Obligatoria)',
                          icon: Icon(Icons.password),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Campo obligatorio. Al menos 8 caracteres.';
                          }
                          if (value.isNotEmpty && value.length <= 7) {
                            return 'Al menos 8 caracteres.';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          blocRegistro.add(
                              OnGuardarPersonal(contrasena_persona: value));
                        },
                      ),
                      TextFormField(
                        controller: telefonoController,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: const InputDecoration(
                          hintText: 'Teléfono móvil (Obligatorio)',
                          icon: Icon(Icons.phone_android),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Campo obligatorio';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          blocRegistro
                              .add(OnGuardarPersonal(telefono_persona: value));
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

  // return ExpandableNotifier(
  //     child: Padding(
  //   padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
  //   child: ScrollOnExpand(
  //     child: Card(
  //       clipBehavior: Clip.antiAlias,
  //       child: Form(
  //         key: _keyFormPersonal,
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: <Widget>[
  //             // Encabezado
  //             // Expandable(
  //             //   collapsed: encabezadoCollapsed(),
  //             //   expanded: encabezadoCollapsed(),
  //             // ),
  //             // Imagen
  //             Expandable(
  //               collapsed: imagenCollapsed(),
  //               expanded: imagenCollapsed(),
  //             ),
  //             // Contenido
  //             Expandable(
  //               collapsed: contenidoCollapsed(),
  //               expanded: contenidoExpanded(),
  //             ),
  //             Divider(
  //               height: 1,
  //             ),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.end,
  //               children: <Widget>[
  //                 Builder(
  //                   builder: (context) {
  //                     var controller =
  //                         ExpandableController.of(context, required: true)!;
  //                     return TextButton(
  //                       style: ButtonStyle(
  //                           backgroundColor:
  //                               MaterialStateProperty.all(Colors.black)),
  //                       child: Text(
  //                         controller.expanded ? "SIGUIENTE" : "LLENAR",
  //                         style: TextStyle(color: Colors.white),
  //                       ),
  //                       onPressed: () {
  //                         if (controller.expanded) {
  //                           // Enviar el valor de genero
  //                           blocRegistro.add(
  //                               OnGuardarPersonal(genero_persona: genero));
  //                           // Comprobar llenado
  //                           if (_keyFormPersonal.currentState!.validate()) {
  //                             // Mostrar domicilio ahora
  //                             BlocProvider.of<RegistroBloc>(context)
  //                                 .add(OnDisenoDomicilio());
  //                             controller.toggle();
  //                           }
  //                         } else {
  //                           controller.toggle();
  //                         }
  //                       },
  //                     );
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   ),
  // ));
}
