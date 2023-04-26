import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linea_amarilla/blocs/login/login_bloc.dart';
import 'package:linea_amarilla/pages/login.dart';

import 'inicio.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({ Key? key }) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();

  
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);
    loginBloc.add(OnLeerLogin());

    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if(state.idPersona > 0 ){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => InicioPage()));
          } else {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
          }
        },
        child: const Center(child: CircularProgressIndicator(strokeWidth: 3)),
      ),
    );
  }
}