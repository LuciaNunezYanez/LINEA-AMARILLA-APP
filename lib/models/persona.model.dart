import 'dart:convert';

class Persona {
    Persona({
        this.idPersona,
        this.fechaHoraRegistroPersona,
        this.nombrePersona,
        this.apPaternoPersona,
        this.apMaternoPersona,
        this.curpPersona,
        this.nacimientoPersona,
        this.generoPersona,
        this.usuarioPersona,
        this.contrasenaPersona,
        this.tipoPersona,
        this.correoPersona,
        this.telefonoPersona,
        this.estatusPersona,
        this.parentescoPersona,
        this.fkIdDireccionPersona,
        this.fkIdDependenciaPersona,
        this.fkIdPacientePersona,
        this.fkIdPersonaRegistro,
    });

    int? idPersona;
    String? fechaHoraRegistroPersona;
    String? nombrePersona;
    String? apPaternoPersona;
    String? apMaternoPersona;
    String? curpPersona;
    String? nacimientoPersona;
    String? generoPersona;
    String? usuarioPersona;
    String? contrasenaPersona;
    String? tipoPersona;
    String? correoPersona;
    String? telefonoPersona;
    int? estatusPersona;
    String? parentescoPersona;
    int? fkIdDireccionPersona;
    int? fkIdDependenciaPersona;
    int? fkIdPacientePersona;
    int? fkIdPersonaRegistro;

    factory Persona.fromJson(String str) => Persona.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Persona.fromMap(Map<String, dynamic> json) => Persona(
        idPersona: json["id_persona"] == null ? null : json["id_persona"],
        fechaHoraRegistroPersona: json["fecha_hora_registro_persona"] == null ? null : json["fecha_hora_registro_persona"],
        nombrePersona: json["nombre_persona"] == null ? null : json["nombre_persona"],
        apPaternoPersona: json["ap_paterno_persona"] == null ? null : json["ap_paterno_persona"],
        apMaternoPersona: json["ap_materno_persona"] == null ? null : json["ap_materno_persona"],
        curpPersona: json["curp_persona"] == null ? null : json["curp_persona"],
        nacimientoPersona: json["nacimiento_persona"] == null ? null : json["nacimiento_persona"],
        generoPersona: json["genero_persona"] == null ? null : json["genero_persona"],
        usuarioPersona: json["usuario_persona"] == null ? null : json["usuario_persona"],
        contrasenaPersona: json["contrasena_persona"] == null ? null : json["contrasena_persona"],
        tipoPersona: json["tipo_persona"] == null ? null : json["tipo_persona"],
        correoPersona: json["correo_persona"] == null ? null : json["correo_persona"],
        telefonoPersona: json["telefono_persona"] == null ? null : json["telefono_persona"],
        estatusPersona: json["estatus_persona"] == null ? null : json["estatus_persona"],
        parentescoPersona: json["parentesco_persona"] == null ? null : json["parentesco_persona"],
        fkIdDireccionPersona: json["fk_id_direccion_persona"] == null ? null : json["fk_id_direccion_persona"],
        fkIdDependenciaPersona: json["fk_id_dependencia_persona"] == null ? null : json["fk_id_dependencia_persona"],
        fkIdPacientePersona: json["fk_id_paciente_persona"] == null ? null : json["fk_id_paciente_persona"],
        fkIdPersonaRegistro: json["fk_id_persona_registro"] == null ? null : json["fk_id_persona_registro"],
    );

    Map<String, dynamic> toMap() => {
        "id_persona": idPersona == null ? null : idPersona,
        "fecha_hora_registro_persona": fechaHoraRegistroPersona == null ? null : fechaHoraRegistroPersona,
        "nombre_persona": nombrePersona == null ? null : nombrePersona,
        "ap_paterno_persona": apPaternoPersona == null ? null : apPaternoPersona,
        "ap_materno_persona": apMaternoPersona == null ? null : apMaternoPersona,
        "curp_persona": curpPersona == null ? null : curpPersona,
        "nacimiento_persona": nacimientoPersona == null ? null : nacimientoPersona,
        "genero_persona": generoPersona == null ? null : generoPersona,
        "usuario_persona": usuarioPersona == null ? null : usuarioPersona,
        "contrasena_persona": contrasenaPersona == null ? null : contrasenaPersona,
        "tipo_persona": tipoPersona == null ? null : tipoPersona,
        "correo_persona": correoPersona == null ? null : correoPersona,
        "telefono_persona": telefonoPersona == null ? null : telefonoPersona,
        "estatus_persona": estatusPersona == null ? null : estatusPersona,
        "parentesco_persona": parentescoPersona == null ? null : parentescoPersona,
        "fk_id_direccion_persona": fkIdDireccionPersona == null ? null : fkIdDireccionPersona,
        "fk_id_dependencia_persona": fkIdDependenciaPersona == null ? null : fkIdDependenciaPersona,
        "fk_id_paciente_persona": fkIdPacientePersona == null ? null : fkIdPacientePersona,
        "fk_id_persona_registro": fkIdPersonaRegistro == null ? null : fkIdPersonaRegistro,
    };
}
