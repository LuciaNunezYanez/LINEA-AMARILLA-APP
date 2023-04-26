part of 'login_bloc.dart';

@immutable
class LoginState extends Equatable {

  int idPersona = 0;

  LoginState({
    this.idPersona = 0
  });

  LoginState copyWith({int idPersona = 0}) => LoginState(idPersona: idPersona);
  
  @override
  List<Object> get props => [idPersona];
}

class LoginInitial extends LoginState {}
