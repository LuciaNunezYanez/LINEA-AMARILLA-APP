import 'package:linea_amarilla/models/direccion.model.dart';
import 'package:linea_amarilla/models/inventario.model.dart';
import 'package:linea_amarilla/models/persona.model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPreferences {
  factory LoginPreferences() {
    return _instancia;
  }

  static final LoginPreferences _instancia = LoginPreferences._internal();

  LoginPreferences._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future guardarPersona(Persona? paciente) async {
    // SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setInt('idPersona', paciente?.idPersona ?? 0);
    _prefs.setString('fechaHoraRegistroPersona', paciente?.fechaHoraRegistroPersona ?? '');
    _prefs.setString('nombrePersona', paciente?.nombrePersona ?? '');
    _prefs.setString('apPaternoPersona', paciente?.apPaternoPersona ?? '');
    _prefs.setString('apMaternoPersona', paciente?.apMaternoPersona ?? '');
    _prefs.setString('curpPersona', paciente?.curpPersona ?? '');
    _prefs.setString('nacimientoPersona', paciente?.nacimientoPersona ?? '');
    _prefs.setString('generoPersona', paciente?.generoPersona ?? '');
    _prefs.setString('usuarioPersona', paciente?.usuarioPersona ?? '');
    _prefs.setString('tipoPersona', paciente?.tipoPersona ?? '');
    _prefs.setString('correoPersona', paciente?.correoPersona ?? '');
    _prefs.setString('telefonoPersona', paciente?.telefonoPersona ?? '');
    _prefs.setString('parentescoPersona', paciente?.parentescoPersona ?? '');
    _prefs.setInt('fkIdDireccionPersona', paciente?.fkIdDireccionPersona ?? 0);
    _prefs.setInt('fkIdDependenciaPersona', paciente?.fkIdDependenciaPersona ?? 0);
    _prefs.setInt('fkIdPacientePersona', paciente?.fkIdPacientePersona ?? 0);
    _prefs.setInt('fkIdPersonaRegistro', paciente?.fkIdPersonaRegistro ?? 0);
    
  }

  Future guardarDireccion(Direccion? direccion) async {
    // SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setInt('idDireccion', direccion?.idDireccion ?? 0);
    _prefs.setString('calle', direccion?.calle ?? '');
    _prefs.setString('numeroExterior', direccion?.numeroExterior ?? '');
    _prefs.setString('numeroInterior', direccion?.numeroInterior ?? '');
    _prefs.setString('colonia', direccion?.colonia ?? '');
    _prefs.setString('cp', direccion?.cp ?? '');
    _prefs.setString('entreCalle', direccion?.entreCalle ?? '');
    _prefs.setString('referencias', direccion?.referencias ?? '');
    _prefs.setInt('fkIdMunicipio', direccion?.fkIdMunicipio?? 0);
    _prefs.setString('localidad', direccion?.localidad ?? '');
    _prefs.setInt('idMunicipios', direccion?.idMunicipios ?? 0);
    _prefs.setInt('estadoId', direccion?.estadoId ?? 0);
    _prefs.setString('claveMunicipio', direccion?.claveMunicipio ?? '');
    _prefs.setString('nombreMunicipio', direccion?.nombreMunicipio ?? '');
    _prefs.setInt('activoMun', direccion?.activoMun ?? 0);
    _prefs.setInt('idEstados', direccion?.idEstados ?? 0);
    _prefs.setString('claveEstado', direccion?.claveEstado ?? '');
    _prefs.setString('nombreEstado', direccion?.nombreEstado ?? '');
    _prefs.setString('abrev', direccion?.abrev ?? '');
    _prefs.setInt('activoEsts', direccion?.activoEsts ?? 0);
  }

  Future guardarInventario(Inventario? inventario) async {
    // SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setInt('puntaje', inventario?.puntaje ?? 0);
  }


  // GETS de Persona
  get idPersona{
    return _prefs.getInt('idPersona') ?? 0;
  }
  get fechaHoraRegistroPersona{
    return _prefs.getString('fechaHoraRegistroPersona') ?? '';
  }
  get nombrePersona{
    return _prefs.getString('nombrePersona') ?? '';
  }
  get apPaternoPersona{
    return _prefs.getString('apPaternoPersona') ?? '';
  }
  get apMaternoPersona{
    return _prefs.getString('apMaternoPersona') ?? '';
  }
  get curpPersona{
    return _prefs.getString('curpPersona') ?? '';
  }
  get nacimientoPersona{
    return _prefs.getString('nacimientoPersona') ?? '';
  }
  get generoPersona{
    return _prefs.getString('generoPersona') ?? '';
  }
  get usuarioPersona{
    return _prefs.getString('usuarioPersona') ?? '';
  }
  get tipoPersona{
    return _prefs.getString('tipoPersona') ?? '';
  }
  get correoPersona{
    return _prefs.getString('correoPersona') ?? '';
  }
  get telefonoPersona{
    return _prefs.getString('telefonoPersona') ?? '';
  }
  get parentescoPersona{
    return _prefs.getString('parentescoPersona') ?? '';
  }
  get fkIdDireccionPersona{
    return _prefs.getInt('fkIdDireccionPersona') ?? 0;
  }
  get fkIdDependenciaPersona{
    return _prefs.getInt('fkIdDependenciaPersona') ?? 0;
  }
  get fkIdPacientePersona{
    return _prefs.getInt('fkIdPacientePersona') ?? 0;
  }
  get fkIdPersonaRegistro{
    return _prefs.getInt('fkIdPersonaRegistro') ?? 0;
  }



  // GETS de Direccion
  get idDireccion{
    return _prefs.getInt('idDireccion') ?? 0;
  }
  get calle{
    return _prefs.getString('calle') ?? '';
  }
  get numeroExterior{
    return _prefs.getString('numeroExterior') ?? '';
  }
  get numeroInterior{
    return _prefs.getString('numeroInterior') ?? '';
  }
  get colonia{
    return _prefs.getString('colonia') ?? '';
  }
  get cp{
    return _prefs.getString('cp') ?? '';
  }
  get entreCalle{
    return _prefs.getString('entreCalle') ?? '';
  }
  get referencias{
    return _prefs.getString('referencias') ?? '';
  }
  get fkIdMunicipio{
    return _prefs.getInt('fkIdMunicipio') ?? 0;
  }
  get localidad{
    return _prefs.getString('localidad') ?? '';
  }
  get idMunicipios{
    return _prefs.getInt('idMunicipios') ?? 0;
  }
  get estadoId{
    return _prefs.getInt('estadoId') ?? 0;
  }
  get claveMunicipio{
    return _prefs.getString('claveMunicipio') ?? '';
  }
  get nombreMunicipio{
    return _prefs.getString('nombreMunicipio') ?? '';
  }
  get activoMun{
    return _prefs.getInt('activoMun') ?? 0;
  }
  get idEstados{
    return _prefs.getInt('idEstados') ?? 0;
  }
  get claveEstado{
    return _prefs.getString('claveEstado') ?? '';
  }
  get nombreEstado{
    return _prefs.getString('nombreEstado') ?? '';
  }
  get abrev{
    return _prefs.getString('abrev') ?? '';
  }
  get activoEsts{
    return _prefs.getInt('activoEsts') ?? 0;
  }

  // INVENTARIO
  get puntaje{
    return _prefs.getInt('puntaje') ?? 0;
  }


  Future deleteIdPersona() => _prefs.remove('idPersona');

  //TODO: Falta el delete de toda la información
}
