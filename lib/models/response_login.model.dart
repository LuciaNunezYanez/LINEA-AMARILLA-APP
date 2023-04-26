import 'dart:convert';

import 'package:linea_amarilla/models/direccion.model.dart';
import 'package:linea_amarilla/models/inventario.model.dart';
import 'package:linea_amarilla/models/persona.model.dart';

class ResponseLogin {
    ResponseLogin({
        required this.ok,
        required this.mensaje,
        this.persona,
        this.direccion,
        this.inventario,
        this.referencia,
        this.direccionRef,
    });

    bool ok;
    String mensaje;
    Persona? persona;
    Direccion? direccion;
    Inventario? inventario;
    Persona? referencia;
    Direccion? direccionRef;

    factory ResponseLogin.fromJson(String str) => ResponseLogin.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ResponseLogin.fromMap(Map<String, dynamic> json) => ResponseLogin(
        ok: json["ok"] == null ? null : json["ok"],
        mensaje: json["mensaje"] == null ? null : json["mensaje"],
        persona: json["persona"] == null ? null : Persona.fromMap(json["persona"]),
        direccion: json["direccion"] == null ? null : Direccion.fromMap(json["direccion"]),
        inventario: json["inventario"] == null ? null : Inventario.fromMap(json["inventario"]),
        referencia: json["referencia"] == null ? null : Persona.fromMap(json["referencia"]),
        direccionRef: json["direccionRef"] == null ? null : Direccion.fromMap(json["direccionRef"]),
    );

    Map<String, dynamic> toMap() => {
        "ok": ok == null ? null : ok,
        "mensaje": mensaje == null ? null : mensaje,
        "persona": persona == null ? null : persona?.toMap(),
        "direccion": direccion == null ? null : direccion?.toMap(),
        "inventario": inventario == null ? null : inventario?.toMap(),
        "referencia": referencia == null ? null : referencia?.toMap(),
        "direccionRef": direccionRef == null ? null : direccionRef?.toMap(),
    };
}

