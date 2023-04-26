// To parse this JSON data, do
//
//     final responseRegistro = responseRegistroFromMap(jsonString);

import 'dart:convert';

class ResponseRegistro {
    ResponseRegistro({
        required this.ok,
        required this.mensaje,
        this.ids,
    });

    bool ok;
    String mensaje;
    Ids? ids;

    factory ResponseRegistro.fromJson(String str) => ResponseRegistro.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ResponseRegistro.fromMap(Map<String, dynamic> json) => ResponseRegistro(
        ok: json["ok"] == null ? null : json["ok"],
        mensaje: json["mensaje"] == null ? null : json["mensaje"],
        ids: json["ids"] == null ? null : Ids.fromMap(json["ids"]),
    );

    Map<String, dynamic> toMap() => {
        "ok": ok == null ? null : ok,
        "mensaje": mensaje == null ? null : mensaje,
        "ids": ids == null ? null : ids?.toMap(),
    };
}

class Ids {
    Ids({
        this.idPersona,
        this.idDireccion,
        this.idInventario,
        this.idPersonaRef,
        this.idDireccionRef,
    });

    int? idPersona;
    int? idDireccion;
    int? idInventario;
    int? idPersonaRef;
    int? idDireccionRef;

    factory Ids.fromJson(String str) => Ids.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Ids.fromMap(Map<String, dynamic> json) => Ids(
        idPersona: json["id_persona"] == null ? null : json["id_persona"],
        idDireccion: json["id_direccion"] == null ? null : json["id_direccion"],
        idInventario: json["id_inventario"] == null ? null : json["id_inventario"],
        idPersonaRef: json["id_persona_ref"] == null ? null : json["id_persona_ref"],
        idDireccionRef: json["id_direccion_ref"] == null ? null : json["id_direccion_ref"],
    );

    Map<String, dynamic> toMap() => {
        "id_persona": idPersona == null ? null : idPersona,
        "id_direccion": idDireccion == null ? null : idDireccion,
        "id_inventario": idInventario == null ? null : idInventario,
        "id_persona_ref": idPersonaRef == null ? null : idPersonaRef,
        "id_direccion_ref": idDireccionRef == null ? null : idDireccionRef,
    };
}
