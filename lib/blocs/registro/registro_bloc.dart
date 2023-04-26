import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:linea_amarilla/global/envirnonment.dart';
import 'package:linea_amarilla/models/response_registro.model.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'registro_event.dart';
part 'registro_state.dart';

class RegistroBloc extends Bloc<RegistroEvent, RegistroState> {
  RegistroBloc() : super(RegistroInitial()) {
    on<RegistroEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<OnImprimir>((event, emit) {
      print(state.p3);
    });

    on<OnCambiarRegistroExitoso>((event, emit) {
      print('ON CAMBIAR ID ' + event.estatus.toString());
      emit(state.copyWith(registroExitoso: event.estatus));
    });

    on<OnEnviarRegistro>((event, emit) async {
      // ENVIAR EL REGISTRO DE LA PERSONA AL SERVIDOR

      try {
        // Validar que vayan los campos obligatorios antes de enviar el registro
        if (state.nombre_persona.isEmpty ||
            state.ap_paterno_persona.isEmpty ||
            state.nacimiento_persona.isEmpty ||
            state.correo_persona.isEmpty ||
            state.contrasena_persona.isEmpty ||
            state.telefono_persona.isEmpty) {
          // Emitir error al enviar formulario
          emit(state.copyWith(
              registroExitoso: -1,
              mensajeError: 'Información personal incompleta.'));
          print('Emitir error al enviar formulario');
          return;
        }

        if (state.calle.isEmpty ||
            state.numero_exterior.isEmpty ||
            state.colonia.isEmpty ||
            state.id_municipio.isEmpty ||
            state.localidad.isEmpty) {
          // Emitir error al enviar formulario
          emit(state.copyWith(
              registroExitoso: -1,
              mensajeError: 'Información de domicilio incompleta.'));
          print('Emitir error al enviar formulario');
          return;
        }

        if (state.nombre_ref.isEmpty ||
            state.ap_paterno_ref.isEmpty ||
            state.telefono_ref.isEmpty) {
          // Emitir error al enviar formulario
          emit(state.copyWith(
              registroExitoso: -1,
              mensajeError: 'Información de la referencia incompleta.'));
          print('Emitir error al enviar formulario');
          return;
        }

        if (state.contrasena_persona.length < 8) {
          emit(state.copyWith(
              registroExitoso: -1,
              mensajeError: 'La contraseña debe tener al menos 8 caracteres.'));
          return;
        }

        final data = {
          'nombre_persona': state.nombre_persona,
          'ap_paterno_persona': state.ap_paterno_persona,
          'ap_materno_persona': state.ap_materno_persona,
          'nacimiento_persona': state.nacimiento_persona,
          'genero_persona': state.genero_persona,
          'correo_persona': state.correo_persona,
          'contrasena_persona': state.contrasena_persona,
          'telefono_persona': state.telefono_persona,
          'calle': state.calle,
          'numero_exterior': state.numero_exterior,
          'numero_interior': state.numero_interior,
          'colonia': state.colonia,
          'cp': state.cp,
          'entre_calle': state.entre_calle,
          'referencias': state.referencias,
          'id_municipio': state.id_municipio,
          'localidad': state.localidad,
          'nombre_ref': state.nombre_ref,
          'ap_paterno_ref': state.ap_paterno_ref,
          'ap_materno_ref': state.ap_materno_ref,
          'parentesco_ref': state.parentesco_ref,
          'telefono_ref': state.telefono_ref,
          'calle_ref': state.calle_ref,
          'numero_exterior_ref': state.numero_exterior_ref,
          'numero_interior_ref': state.numero_interior_ref,
          'colonia_ref': state.colonia_ref,
          'cp_ref': state.cp_ref,
          'p1': state.p1,
          'p2': state.p2,
          'p3': state.p3,
          'p4': state.p4,
          'p5': state.p5,
          'p6': state.p6,
          'p7': state.p7,
          'p8': state.p8,
          'p9': state.p9,
          'p10': state.p10,
          'p11': state.p11,
          'p12': state.p12,
          'p13': state.p13,
          'p14': state.p14,
          'p15': state.p15,
        };

        final http.Response resp = await http.post(
            Uri.parse('${Environment.url}/registro/completo'),
            body: jsonEncode(data),
            headers: {
              'Content-Type': 'application/json'
            }).timeout(Duration(seconds: 7), onTimeout: () {
          return throw TimeoutException('¡Ocurrió un error con el servidor!');
        });

        // print(resp.body);
        final ResponseRegistro registroResponse =
            ResponseRegistro.fromJson(resp.body);

        if (!registroResponse.ok) {
          emit(state.copyWith(
              registroExitoso: -1, mensajeError: registroResponse.mensaje));
        } else {
          // Comprobar que venga el ID de la persona/paciente
          // Si se registró, emit para que se guarde la información
          if (registroResponse.ids!.idPersona != null) {
            emit(state.copyWith(
                registroExitoso: registroResponse.ids!.idPersona,
                mensajeError: ''));
          } else {
            // Si no, notificar en la pantalla
            emit(state.copyWith(
                registroExitoso: -1,
                mensajeError: 'Ocurrió un error al realizar registro'));
          }
        }
      } catch (e) {
        emit(state.copyWith(
            registroExitoso: -1,
            mensajeError: 'Ocurrió un error al realizar registro ${e}'));
        // throw TimeoutException('¡Ocurrió un error $e');
      }
    });

    on<OnDisenoPersonal>((event, emit) {
      emit(state.copyWith(regPersonal: true));
    });
    on<OnDisenoDomicilio>((event, emit) {
      emit(state.copyWith(regDomicilio: true));
    });
    on<OnDisenoReferencias>((event, emit) {
      emit(state.copyWith(regReferencias: true));
    });
    on<OnDisenoInventario>((event, emit) {
      emit(state.copyWith(regInventario: true));
    });

    on<OnGuardarPersonal>((event, emit) {
      emit(state.copyWith(
        nombre_persona: event.nombre_persona,
        ap_paterno_persona: event.ap_paterno_persona,
        ap_materno_persona: event.ap_materno_persona,
        nacimiento_persona: event.nacimiento_persona,
        genero_persona: event.genero_persona,
        correo_persona: event.correo_persona,
        contrasena_persona: event.contrasena_persona,
        telefono_persona: event.telefono_persona,
      ));
    });
    on<OnGuardarDomicilio>((event, emit) {
      emit(state.copyWith(
        // Domicilio
        calle: event.calle,
        numero_exterior: event.numero_exterior,
        numero_interior: event.numero_interior,
        colonia: event.colonia,
        cp: event.cp,
        entre_calle: event.entre_calle,
        referencias: event.referencias,
        id_municipio: event.id_municipio,
        localidad: event.localidad,
      ));
    });
    on<OnGuardarReferencia>((event, emit) {
      emit(state.copyWith(
        // Referencias
        nombre_ref: event.nombre_ref,
        ap_paterno_ref: event.ap_paterno_ref,
        ap_materno_ref: event.ap_materno_ref,
        parentesco_ref: event.parentesco_ref,
        telefono_ref: event.telefono_ref,
        calle_ref: event.calle_ref,
        numero_exterior_ref: event.numero_exterior_ref,
        numero_interior_ref: event.numero_interior_ref,
        colonia_ref: event.colonia_ref,
        cp_ref: event.cp_ref,
      ));
    });

    on<OnGuardarInventario>((event, emit) {
      emit(state.copyWith(
          // Inventario
          p1: event.p1,
          p2: event.p2,
          p3: event.p3,
          p4: event.p4,
          p5: event.p5,
          p6: event.p6,
          p7: event.p7,
          p8: event.p8,
          p9: event.p9,
          p10: event.p10,
          p11: event.p11,
          p12: event.p12,
          p13: event.p13,
          p14: event.p14,
          p15: event.p15));
    });
  }
}
