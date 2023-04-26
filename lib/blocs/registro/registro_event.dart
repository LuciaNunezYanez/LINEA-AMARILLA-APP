part of 'registro_bloc.dart';

@immutable
class RegistroEvent {}

class OnEnviarRegistro extends RegistroEvent {}

// class OnRegistrar extends RegistroEvent{}

// class OnImprimir extends RegistroEvent {}

// PARA EL CONTROL DE DISEÑO
class OnDisenoPersonal extends RegistroEvent {}

class OnDisenoDomicilio extends RegistroEvent {}

class OnDisenoReferencias extends RegistroEvent {}

class OnDisenoInventario extends RegistroEvent {}

class OnImprimir extends RegistroEvent {}

class OnCambiarRegistroExitoso extends RegistroEvent {
  final int estatus;
  OnCambiarRegistroExitoso(this.estatus);
}

// PARA GUARDAR LA INFORMACIÓN
class OnGuardarPersonal extends RegistroEvent {
  // Información personal
  final nombre_persona;
  final ap_paterno_persona;
  final ap_materno_persona;
  final nacimiento_persona;
  final genero_persona;
  final correo_persona;
  final contrasena_persona;
  final telefono_persona;

  OnGuardarPersonal(
      {this.nombre_persona,
      this.ap_paterno_persona,
      this.ap_materno_persona,
      this.nacimiento_persona,
      this.genero_persona,
      this.correo_persona,
      this.contrasena_persona,
      this.telefono_persona});
}

class OnGuardarDomicilio extends RegistroEvent {
  // Domicilio
  final calle;
  final numero_exterior;
  final numero_interior;
  final colonia;
  final cp;
  final entre_calle;
  final referencias;
  final id_municipio;
  final localidad;

  OnGuardarDomicilio(
      {this.calle,
      this.numero_exterior,
      this.numero_interior,
      this.colonia,
      this.cp,
      this.entre_calle,
      this.referencias,
      this.id_municipio,
      this.localidad});
}

class OnGuardarReferencia extends RegistroEvent {
  // Referencias
  final nombre_ref;
  final ap_paterno_ref;
  final ap_materno_ref;
  final parentesco_ref;
  final telefono_ref;
  final calle_ref;
  final numero_exterior_ref;
  final numero_interior_ref;
  final colonia_ref;
  final cp_ref;

  OnGuardarReferencia(
      {this.nombre_ref,
      this.ap_paterno_ref,
      this.ap_materno_ref,
      this.parentesco_ref,
      this.telefono_ref,
      this.calle_ref,
      this.numero_exterior_ref,
      this.numero_interior_ref,
      this.colonia_ref,
      this.cp_ref});
}

class OnGuardarInventario extends RegistroEvent {
  // Inventario
  final p1;
  final p2;
  final p3;
  final p4;
  final p5;
  final p6;
  final p7;
  final p8;
  final p9;
  final p10;
  final p11;
  final p12;
  final p13;
  final p14;
  final p15;

  OnGuardarInventario(
      {this.p1,
      this.p2,
      this.p3,
      this.p4,
      this.p5,
      this.p6,
      this.p7,
      this.p8,
      this.p9,
      this.p10,
      this.p11,
      this.p12,
      this.p13,
      this.p14,
      this.p15});
}
