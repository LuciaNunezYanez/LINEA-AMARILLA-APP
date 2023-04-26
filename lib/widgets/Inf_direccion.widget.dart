import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/registro/registro_bloc.dart';

const List<String> municipios = <String>[
  'Municipio (Obligatorio)',
  'Canatlán',
  'Canelas',
  'Coneto de Comonfort',
  'Cuencamé',
  'Durango',
  'General Simón Bolívar',
  'Gómez Palacio',
  'Guadalupe Victoria',
  'Guanaceví',
  'Hidalgo',
  'Indé',
  'Lerdo',
  'Mapimí',
  'Mezquital',
  'Nazas',
  'Nombre de Dios',
  'Ocampo',
  'El Oro',
  'Otáez',
  'Pánuco de Coronado',
  'Peñón Blanco',
  'Poanas',
  'Pueblo Nuevo',
  'Rodeo',
  'San Bernardo',
  'San Dimas',
  'San Juan de Guadalupe',
  'San Juan del Río',
  'San Luis del Cordero',
  'San Pedro del Gallo',
  'Santa Clara',
  'Santiago Papasquiaro',
  'Súchil',
  'Tamazula',
  'Tepehuanes',
  'Tlahualilo',
  'Topia',
  'Vicente Guerrero',
  'Nuevo Ideal'
];
String dropdownValue = municipios.first;

// Controladores del formulario
var calleController = TextEditingController();
var numeroExtController = TextEditingController();
var numeroIntController = TextEditingController();
var coloniaController = TextEditingController();
var cpController = TextEditingController();
var entreCallesController = TextEditingController();
var referenciasController = TextEditingController();
var municipioController = TextEditingController();
var localidadController = TextEditingController();

class CardInformacionDireccion extends StatefulWidget {
  @override
  State<CardInformacionDireccion> createState() =>
      _CardInformacionDireccionState();
}

class _CardInformacionDireccionState extends State<CardInformacionDireccion> {
  final GlobalKey<FormState> _keyFormDireccion = GlobalKey<FormState>();

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
                    'DOMICILIO',
                    style: TextStyle(fontSize: 18),
                  )),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/inf_domicilio.jpg"),
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
                      TextFormField(
                          controller: calleController,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.add_road),
                            hintText: 'Calle (Obligatoria)',
                          ),
                          onChanged: (value) {
                            blocRegistro.add(OnGuardarDomicilio(calle: value));
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Campo obligatorio';
                            }
                            return null;
                          }),
                      TextFormField(
                          controller: numeroExtController,
                          decoration: const InputDecoration(
                            hintText: 'Número exterior (Obligatorio)',
                            icon: Icon(Icons.pin),
                          ),
                          onChanged: (value) {
                            blocRegistro.add(
                                OnGuardarDomicilio(numero_exterior: value));
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Campo obligatorio';
                            }
                            return null;
                          }),
                      TextFormField(
                        controller: numeroIntController,
                        decoration: const InputDecoration(
                          hintText: 'Número interior',
                          icon: Icon(Icons.money_outlined),
                        ),
                        onChanged: (value) {
                          blocRegistro
                              .add(OnGuardarDomicilio(numero_interior: value));
                        },
                      ),
                      TextFormField(
                          controller: coloniaController,
                          decoration: const InputDecoration(
                            hintText: 'Colonia/Fraccionamiento (Obligatorio)',
                            icon: Icon(Icons.maps_home_work),
                          ),
                          onChanged: (value) {
                            blocRegistro
                                .add(OnGuardarDomicilio(colonia: value));
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Campo obligatorio';
                            }
                            return null;
                          }),
                      TextFormField(
                        controller: cpController,
                        maxLength: 5,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'Código postal',
                          icon: Icon(Icons.markunread_mailbox),
                        ),
                        onChanged: (value) {
                          blocRegistro.add(OnGuardarDomicilio(cp: value));
                        },
                      ),
                      TextFormField(
                        controller: entreCallesController,
                        decoration: const InputDecoration(
                          hintText: 'Entre calles',
                          icon: Icon(Icons.map_outlined),
                        ),
                        onChanged: (value) {
                          blocRegistro
                              .add(OnGuardarDomicilio(entre_calle: value));
                        },
                      ),
                      TextFormField(
                        controller: referenciasController,
                        decoration: const InputDecoration(
                          hintText: 'Referencias del domicilio',
                          icon: Icon(Icons.yard),
                        ),
                        onChanged: (value) {
                          blocRegistro
                              .add(OnGuardarDomicilio(referencias: value));
                        },
                      ),
                      DropdownButtonFormField<String>(
                          decoration:
                              InputDecoration(icon: Icon(Icons.location_city)),
                          value: dropdownValue,
                          elevation: 16,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 98, 98, 98),
                              fontSize: 18),
                          onChanged: (String? value) {
                            print('EL VALUE ES: ' + value!);
                            setState(() {
                              dropdownValue = value;
                            });
                            // Enviar el valor al BLOC
                            var idMunicipioSel = 0;
                            for (var i = 0; i < municipios.length; i++) {
                              idMunicipioSel =
                                  identical(dropdownValue, municipios[i])
                                      ? i
                                      : idMunicipioSel;
                            }
                            // Generar el ID que tendrá en la base de datos para hacer la relación
                            idMunicipioSel = (idMunicipioSel >= 1)
                                ? idMunicipioSel + 286
                                : idMunicipioSel;
                            BlocProvider.of<RegistroBloc>(context).add(
                                OnGuardarDomicilio(
                                    id_municipio: idMunicipioSel.toString()));
                          },
                          items: municipios
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          validator: (String? value) {
                            print(value);
                            if (value == null ||
                                value.isEmpty ||
                                value.contains('Seleccione')) {
                              return 'Campo obligatorio';
                            }
                            return null;
                          }),
                      TextFormField(
                          controller: localidadController,
                          decoration: const InputDecoration(
                            hintText: 'Localidad (Obligatorio)',
                            icon: Icon(Icons.place),
                          ),
                          onChanged: (value) {
                            blocRegistro
                                .add(OnGuardarDomicilio(localidad: value));
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Campo obligatorio';
                            }
                            return null;
                          }),
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
  //         key: _keyFormDireccion,
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
  //                         var idMunicipioSel = 0;
  //                         for (var i = 0; i < municipios.length; i++) {
  //                           idMunicipioSel =
  //                               identical(dropdownValue, municipios[i])
  //                                   ? i
  //                                   : idMunicipioSel;
  //                         }
  //                         // Generar el ID que tendrá en la base de datos para hacer la relación
  //                         idMunicipioSel = (idMunicipioSel >= 1)
  //                             ? idMunicipioSel + 286
  //                             : idMunicipioSel;
  //                         BlocProvider.of<RegistroBloc>(context).add(
  //                             OnGuardarDomicilio(
  //                                 id_municipio: idMunicipioSel.toString()));

  //                         if (controller.expanded) {
  //                           // Comprobar llenado
  //                           if (_keyFormDireccion.currentState!.validate()) {
  //                             // Mostrar inventario ahora
  //                             BlocProvider.of<RegistroBloc>(context)
  //                                 .add(OnDisenoReferencias());
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
