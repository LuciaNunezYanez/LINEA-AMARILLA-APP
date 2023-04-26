part of 'registro_bloc.dart';

@immutable
class RegistroState extends Equatable {

  // Para control de interface
  int registroExitoso = 0;
  String mensajeError = '';

  // CONTROL DE REGISTRO
  bool regPersonal = true;
  bool regDomicilio = false;
  bool regReferencias = false;
  bool regInventario = false;

  // CAMPOS DEL REGISTRO
  // Información personal
  String nombre_persona = "";
  String ap_paterno_persona = "";
  String ap_materno_persona = "";
  String nacimiento_persona = "";
  String genero_persona = "";
  String correo_persona = "";
  String contrasena_persona = "";
  String telefono_persona = "";

  // Domicilio
  String calle = "";
  String numero_exterior = "";
  String numero_interior = "";
  String colonia = "";
  String cp = "";
  String entre_calle = "";
  String referencias = "";
  String id_municipio = "";
  String localidad = "";

  // Referencias
  String nombre_ref = "";
  String ap_paterno_ref = "";
  String ap_materno_ref = "";
  String parentesco_ref = "";
  String telefono_ref = "";
  String calle_ref = "";
  String numero_exterior_ref = "";
  String numero_interior_ref = "";
  String colonia_ref = "";
  String cp_ref = "";

  // Inventario
  int p1 = 0;
  int p2 = 0;
  int p3 = 0;
  int p4 = 0;
  int p5 = 0;
  int p6 = 0;
  int p7 = 0;
  int p8 = 0;
  int p9 = 0;
  int p10 = 0;
  int p11 = 0;
  int p12 = 0;
  int p13 = 0;
  int p14 = 0;
  int p15 = 0;

  RegistroState(
      {
      // Información personal
      this.nombre_persona = "",
      this.ap_paterno_persona = "",
      this.ap_materno_persona = "",
      this.nacimiento_persona = "",
      this.genero_persona = "",
      this.correo_persona = "",
      this.contrasena_persona = "",
      this.telefono_persona = "",

      // Domicilio
      this.calle = "",
      this.numero_exterior = "",
      this.numero_interior = "",
      this.colonia = "",
      this.cp = "",
      this.entre_calle = "",
      this.referencias = "",
      this.id_municipio = "",
      this.localidad = "",

      // Referencias
      this.nombre_ref = "",
      this.ap_paterno_ref = "",
      this.ap_materno_ref = "",
      this.parentesco_ref = "",
      this.telefono_ref = "",
      this.calle_ref = "",
      this.numero_exterior_ref = "",
      this.numero_interior_ref = "",
      this.colonia_ref = "",
      this.cp_ref = "",

      // Inventario
      this.p1 = 0,
      this.p2 = 0,
      this.p3 = 0,
      this.p4 = 0,
      this.p5 = 0,
      this.p6 = 0,
      this.p7 = 0,
      this.p8 = 0,
      this.p9 = 0,
      this.p10 = 0,
      this.p11 = 0,
      this.p12 = 0,
      this.p13 = 0,
      this.p14 = 0,
      this.p15 = 0,

      // CONTROL REGISTRO
      this.regPersonal = false,
      this.regDomicilio = false,
      this.regReferencias = false,
      this.regInventario = true,
      
      this.registroExitoso = 0,
      this.mensajeError = ''
      });

  RegistroState copyWith(
          {String? nombre_persona,
          String? ap_paterno_persona,
          String? ap_materno_persona,
          String? nacimiento_persona,
          String? genero_persona,
          String? correo_persona,
          String? contrasena_persona,
          String? telefono_persona,

          // Domicilio
          String? calle,
          String? numero_exterior,
          String? numero_interior,
          String? colonia,
          String? cp,
          String? entre_calle,
          String? referencias,
          String? id_municipio,
          String? localidad,

          // Referencias
          String? nombre_ref,
          String? ap_paterno_ref,
          String? ap_materno_ref,
          String? parentesco_ref,
          String? telefono_ref,
          String? calle_ref,
          String? numero_exterior_ref,
          String? numero_interior_ref,
          String? colonia_ref,
          String? cp_ref,

          // Inventario
          int? p1,
          int? p2,
          int? p3,
          int? p4,
          int? p5,
          int? p6,
          int? p7,
          int? p8,
          int? p9,
          int? p10,
          int? p11,
          int? p12,
          int? p13,
          int? p14,
          int? p15,

          // CONTROL REGISTRO
          bool? regPersonal,
          bool? regDomicilio,
          bool? regReferencias,
          bool? regInventario, 
          
          int? registroExitoso, 
          String? mensajeError}) =>
      RegistroState(
          nombre_persona: nombre_persona ?? this.nombre_persona,
          ap_paterno_persona: ap_paterno_persona ?? this.ap_paterno_persona,
          ap_materno_persona: ap_materno_persona ?? this.ap_materno_persona,
          nacimiento_persona: nacimiento_persona ?? this.nacimiento_persona,
          genero_persona: genero_persona ?? this.genero_persona,
          correo_persona: correo_persona ?? this.correo_persona,
          contrasena_persona: contrasena_persona ?? this.contrasena_persona,
          telefono_persona: telefono_persona ?? this.telefono_persona,

          // Domicilio
          calle: calle ?? this.calle,
          numero_exterior: numero_exterior ?? this.numero_exterior,
          numero_interior: numero_interior ?? this.numero_interior,
          colonia: colonia ?? this.colonia,
          cp: cp ?? this.cp,
          entre_calle: entre_calle ?? this.entre_calle,
          referencias: referencias ?? this.referencias,
          id_municipio: id_municipio ?? this.id_municipio,
          localidad: localidad ?? this.localidad,

          // Referencias
          nombre_ref: nombre_ref ?? this.nombre_ref,
          ap_paterno_ref: ap_paterno_ref ?? this.ap_paterno_ref,
          ap_materno_ref: ap_materno_ref ?? this.ap_materno_ref,
          parentesco_ref: parentesco_ref ?? this.parentesco_ref,
          telefono_ref: telefono_ref ?? this.telefono_ref,
          calle_ref: calle_ref ?? this.calle_ref,
          numero_exterior_ref: numero_exterior_ref ?? this.numero_exterior_ref,
          numero_interior_ref: numero_interior_ref ?? this.numero_interior_ref,
          colonia_ref: colonia_ref ?? this.colonia_ref,
          cp_ref: cp_ref ?? this.cp_ref,

          // Inventario
          p1: p1 ?? this.p1,
          p2: p2 ?? this.p2,
          p3: p3 ?? this.p3,
          p4: p4 ?? this.p4,
          p5: p5 ?? this.p5,
          p6: p6 ?? this.p6,
          p7: p7 ?? this.p7,
          p8: p8 ?? this.p8,
          p9: p9 ?? this.p9,
          p10: p10 ?? this.p10,
          p11: p11 ?? this.p11,
          p12: p12 ?? this.p12,
          p13: p13 ?? this.p13,
          p14: p14 ?? this.p14,
          p15: p15 ?? this.p15,

          // CONTROL REGISTRO
          regPersonal: regPersonal ?? this.regPersonal,
          regDomicilio: regDomicilio ?? this.regDomicilio,
          regReferencias: regReferencias ?? this.regReferencias,
          regInventario: regInventario ?? this.regInventario,
          
          registroExitoso: registroExitoso ?? this.registroExitoso,
          mensajeError: mensajeError ?? this.mensajeError);

  @override
  List<Object?> get props => [
        // CONTROL DE REGISTRO
        regPersonal,
        regDomicilio,
        regReferencias,
        regInventario,

        // CAMPOS DEL REGISTRO
        // Información personal
        nombre_persona,
        ap_paterno_persona,
        ap_materno_persona,
        nacimiento_persona,
        genero_persona,
        correo_persona,
        contrasena_persona,
        telefono_persona,

        // Domicilio
        calle,
        numero_exterior,
        numero_interior,
        colonia,
        cp,
        entre_calle,
        referencias,
        id_municipio,
        localidad,

        // Referencias
        nombre_ref,
        ap_paterno_ref,
        ap_materno_ref,
        parentesco_ref,
        telefono_ref,
        calle_ref,
        numero_exterior_ref,
        numero_interior_ref,
        colonia_ref,
        cp_ref,

        // Inventario
        p1,
        p2,
        p3,
        p4,
        p5,
        p6,
        p7,
        p8,
        p9,
        p10,
        p11,
        p12,
        p13,
        p14,
        p15,

        registroExitoso,
        mensajeError
      ];
}

class RegistroInitial extends RegistroState {}
