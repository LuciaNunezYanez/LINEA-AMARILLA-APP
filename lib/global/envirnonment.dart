import 'dart:io';

class Environment {
  // static String url = Platform.isAndroid? 'http://10.11.127.70:8083' : 'http://10.11.127.70:8083';
  static String url = Platform.isAndroid
      ? 'http://192.168.1.12:8083'
      : 'http://192.168.1.12:8083';

  static const String tipoPaciente = 'paciente';
}
