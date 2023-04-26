part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class OnLogin extends LoginEvent{
  final correo;
  final contrasena;

  OnLogin(this.correo, this.contrasena);
}

class OnGuardarLogin extends LoginEvent{

}

class OnCambiarIDPersona extends LoginEvent{
  final int id;
  OnCambiarIDPersona(this.id);
}
class OnCerrarSesion extends LoginEvent{
  
}

class OnLeerLogin extends LoginEvent{

}
