import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:linea_amarilla/blocs/share_pref/login.preferences.dart';
import 'package:linea_amarilla/global/envirnonment.dart';
import 'package:linea_amarilla/models/response_login.model.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<OnLogin>((event, emit) async {
      try {
        var correo = event.correo;
        var contrasena = event.contrasena;
        final data = {
          'correo': correo,
          'contrasena': contrasena,
          'tipo': Environment.tipoPaciente
        };

        // Hacer petición http
        final http.Response resp = await http.post(
            Uri.parse('${Environment.url}/api/persona/login/correo'),
            body: jsonEncode(data),
            headers: {
              'Content-Type': 'application/json'
            }).timeout(Duration(seconds: 7), onTimeout: () {
          return throw TimeoutException('¡Ocurrió un error con el servidor!');
        });

        final ResponseLogin loginResponse = ResponseLogin.fromJson(resp.body);

        if(loginResponse.persona?.idPersona != null){
          // Guardar credenciales del usuario en el celular
          print('SE INICIO SESIÓN CORRECTAMENTE');
          LoginPreferences _loginP = LoginPreferences();
          await _loginP.guardarPersona(loginResponse.persona);
          await _loginP.guardarDireccion(loginResponse.direccion);
          await _loginP.guardarInventario(loginResponse.inventario);
          
          // Emitir que todo se guardó bien y pasar a la siguiente pantalla.
          emit(state.copyWith(idPersona: loginResponse.persona!.idPersona!));
        } else {
          // Ocurrió un error y no se inicio sesion 
          emit(state.copyWith(idPersona: -1));
          print('OCURRIÓ UN ERROR AL INICIAR SESIÓN'+loginResponse.mensaje);
        }
      } catch (e) {
          emit(state.copyWith(idPersona: -1));
      }
    });

    on<OnCerrarSesion>((event, emit) async {
      LoginPreferences _loginP = LoginPreferences();
      await _loginP.deleteIdPersona();
      emit(state.copyWith(idPersona: 0));
    });

    on<OnLeerLogin>((event, emit) async {
      LoginPreferences prefs = LoginPreferences();
      var idPersona = prefs.idPersona;
      emit(state.copyWith(idPersona: idPersona));
    });

    on<OnCambiarIDPersona>((event, emit) {
      print('ON CAMBIAR ID ' + event.id.toString());
      emit(state.copyWith(idPersona: event.id));
    });
  }
}
