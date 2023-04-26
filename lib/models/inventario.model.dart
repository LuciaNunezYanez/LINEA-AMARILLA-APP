// To parse this JSON data, do
//
//     final inventario = inventarioFromMap(jsonString);

import 'dart:convert';

class Inventario {
    Inventario({
        this.idInventario,
        this.fkIdPersonaInv,
        this.fechaInv,
        this.tomaMedicInv,
        this.dificSuenoInv,
        this.perderControlInv,
        this.interesRelInv,
        this.pesimoOptimInv,
        this.inutilInservInv,
        this.futuroEsperanzaInv,
        this.fracasInv,
        this.deprimidoInv,
        this.separDivorcViudInv,
        this.famSuicInv,
        this.enfadadoInv,
        this.suicidarseInv,
        this.queriaSuicInv,
        this.quitVidaInv,
        this.puntaje
    });

    int? idInventario;
    int? fkIdPersonaInv;
    String? fechaInv;
    int? tomaMedicInv;
    int? dificSuenoInv;
    int? perderControlInv;
    int? interesRelInv;
    int? pesimoOptimInv;
    int? inutilInservInv;
    int? futuroEsperanzaInv;
    int? fracasInv;
    int? deprimidoInv;
    int? separDivorcViudInv;
    int? famSuicInv;
    int? enfadadoInv;
    int? suicidarseInv;
    int? queriaSuicInv;
    int? quitVidaInv;
    int? puntaje;

    factory Inventario.fromJson(String str) => Inventario.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Inventario.fromMap(Map<String, dynamic> json) => Inventario(
        idInventario: json["id_inventario"] == null ? null : json["id_inventario"],
        fkIdPersonaInv: json["fk_id_persona_inv"] == null ? null : json["fk_id_persona_inv"],
        fechaInv: json["fecha_inv"] == null ? null : json["fecha_inv"],
        tomaMedicInv: json["toma_medic_inv"] == null ? null : json["toma_medic_inv"],
        dificSuenoInv: json["dific_sueno_inv"] == null ? null : json["dific_sueno_inv"],
        perderControlInv: json["perder_control_inv"] == null ? null : json["perder_control_inv"],
        interesRelInv: json["interes_rel_inv"] == null ? null : json["interes_rel_inv"],
        pesimoOptimInv: json["pesimo_optim_inv"] == null ? null : json["pesimo_optim_inv"],
        inutilInservInv: json["inutil_inserv_inv"] == null ? null : json["inutil_inserv_inv"],
        futuroEsperanzaInv: json["futuro_esperanza_inv"] == null ? null : json["futuro_esperanza_inv"],
        fracasInv: json["fracas_inv"] == null ? null : json["fracas_inv"],
        deprimidoInv: json["deprimido_inv"] == null ? null : json["deprimido_inv"],
        separDivorcViudInv: json["separ_divorc_viud_inv"] == null ? null : json["separ_divorc_viud_inv"],
        famSuicInv: json["fam_suic_inv"] == null ? null : json["fam_suic_inv"],
        enfadadoInv: json["enfadado_inv"] == null ? null : json["enfadado_inv"],
        suicidarseInv: json["suicidarse_inv"] == null ? null : json["suicidarse_inv"],
        queriaSuicInv: json["queria_suic_inv"] == null ? null : json["queria_suic_inv"],
        quitVidaInv: json["quit_vida_inv"] == null ? null : json["quit_vida_inv"],
        puntaje: json["puntaje"] == null ? null : json["puntaje"],
    );

    Map<String, dynamic> toMap() => {
        "id_inventario": idInventario == null ? null : idInventario,
        "fk_id_persona_inv": fkIdPersonaInv == null ? null : fkIdPersonaInv,
        "fecha_inv": fechaInv == null ? null : fechaInv,
        "toma_medic_inv": tomaMedicInv == null ? null : tomaMedicInv,
        "dific_sueno_inv": dificSuenoInv == null ? null : dificSuenoInv,
        "perder_control_inv": perderControlInv == null ? null : perderControlInv,
        "interes_rel_inv": interesRelInv == null ? null : interesRelInv,
        "pesimo_optim_inv": pesimoOptimInv == null ? null : pesimoOptimInv,
        "inutil_inserv_inv": inutilInservInv == null ? null : inutilInservInv,
        "futuro_esperanza_inv": futuroEsperanzaInv == null ? null : futuroEsperanzaInv,
        "fracas_inv": fracasInv == null ? null : fracasInv,
        "deprimido_inv": deprimidoInv == null ? null : deprimidoInv,
        "separ_divorc_viud_inv": separDivorcViudInv == null ? null : separDivorcViudInv,
        "fam_suic_inv": famSuicInv == null ? null : famSuicInv,
        "enfadado_inv": enfadadoInv == null ? null : enfadadoInv,
        "suicidarse_inv": suicidarseInv == null ? null : suicidarseInv,
        "queria_suic_inv": queriaSuicInv == null ? null : queriaSuicInv,
        "quit_vida_inv": quitVidaInv == null ? null : quitVidaInv,
        "puntaje": puntaje == null ? null : puntaje,
    };
}
