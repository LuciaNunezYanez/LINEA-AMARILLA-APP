// To parse this JSON data, do
//
//     final direccion = direccionFromMap(jsonString);

import 'dart:convert';

Direccion direccionFromMap(String str) => Direccion.fromMap(json.decode(str));

String direccionToMap(Direccion data) => json.encode(data.toMap());

class Direccion {
    Direccion({
        this.idDireccion,
        this.calle,
        this.numeroExterior,
        this.numeroInterior,
        this.colonia,
        this.cp,
        this.entreCalle,
        this.referencias,
        this.fkIdMunicipio,
        this.localidad,
        this.idMunicipios,
        this.estadoId,
        this.claveMunicipio,
        this.nombreMunicipio,
        this.activoMun,
        this.idEstados,
        this.claveEstado,
        this.nombreEstado,
        this.abrev,
        this.activoEsts,
    });

    int? idDireccion;
    String? calle;
    String? numeroExterior;
    String? numeroInterior;
    String? colonia;
    String? cp;
    String? entreCalle;
    String? referencias;
    int? fkIdMunicipio;
    String? localidad;
    int? idMunicipios;
    int? estadoId;
    String? claveMunicipio;
    String? nombreMunicipio;
    int? activoMun;
    int? idEstados;
    String? claveEstado;
    String? nombreEstado;
    String? abrev;
    int? activoEsts;

    factory Direccion.fromMap(Map<String, dynamic> json) => Direccion(
        idDireccion: json["id_direccion"] == null ? null : json["id_direccion"],
        calle: json["calle"] == null ? null : json["calle"],
        numeroExterior: json["numero_exterior"] == null ? null : json["numero_exterior"],
        numeroInterior: json["numero_interior"] == null ? null : json["numero_interior"],
        colonia: json["colonia"] == null ? null : json["colonia"],
        cp: json["cp"] == null ? null : json["cp"],
        entreCalle: json["entre_calle"] == null ? null : json["entre_calle"],
        referencias: json["referencias"] == null ? null : json["referencias"],
        fkIdMunicipio: json["fk_id_municipio"] == null ? null : json["fk_id_municipio"],
        localidad: json["localidad"] == null ? null : json["localidad"],
        idMunicipios: json["id_municipios"] == null ? null : json["id_municipios"],
        estadoId: json["estado_id"] == null ? null : json["estado_id"],
        claveMunicipio: json["clave_municipio"] == null ? null : json["clave_municipio"],
        nombreMunicipio: json["nombre_municipio"] == null ? null : json["nombre_municipio"],
        activoMun: json["activo_mun"] == null ? null : json["activo_mun"],
        idEstados: json["id_estados"] == null ? null : json["id_estados"],
        claveEstado: json["clave_estado"] == null ? null : json["clave_estado"],
        nombreEstado: json["nombre_estado"] == null ? null : json["nombre_estado"],
        abrev: json["abrev"] == null ? null : json["abrev"],
        activoEsts: json["activo_ests"] == null ? null : json["activo_ests"],
    );

    Map<String, dynamic> toMap() => {
        "id_direccion": idDireccion == null ? null : idDireccion,
        "calle": calle == null ? null : calle,
        "numero_exterior": numeroExterior == null ? null : numeroExterior,
        "numero_interior": numeroInterior == null ? null : numeroInterior,
        "colonia": colonia == null ? null : colonia,
        "cp": cp == null ? null : cp,
        "entre_calle": entreCalle == null ? null : entreCalle,
        "referencias": referencias == null ? null : referencias,
        "fk_id_municipio": fkIdMunicipio == null ? null : fkIdMunicipio,
        "localidad": localidad == null ? null : localidad,
        "id_municipios": idMunicipios == null ? null : idMunicipios,
        "estado_id": estadoId == null ? null : estadoId,
        "clave_municipio": claveMunicipio == null ? null : claveMunicipio,
        "nombre_municipio": nombreMunicipio == null ? null : nombreMunicipio,
        "activo_mun": activoMun == null ? null : activoMun,
        "id_estados": idEstados == null ? null : idEstados,
        "clave_estado": claveEstado == null ? null : claveEstado,
        "nombre_estado": nombreEstado == null ? null : nombreEstado,
        "abrev": abrev == null ? null : abrev,
        "activo_ests": activoEsts == null ? null : activoEsts,
    };
}
