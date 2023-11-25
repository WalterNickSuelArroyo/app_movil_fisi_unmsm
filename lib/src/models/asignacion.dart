import 'dart:convert';

Asignacion asignacionFromJson(String str) => Asignacion.fromJson(json.decode(str));

String asignacionToJson(Asignacion data) => json.encode(data.toJson());

class Asignacion {
    String? id;
    String? pabellon;
    String? aula;
    String? curso;
    String? profesor;
    String? fecha;
    String? hora_inicio;
    String? hora_fin;

    Asignacion({
        this.id,
        this.pabellon,
        this.aula,
        this.curso,
        this.profesor,
        this.fecha,
        this.hora_inicio,
        this.hora_fin,
    });

    static List<Asignacion> fromJsonList (List<dynamic> jsonList) {
      List<Asignacion> toList = [];
      jsonList.forEach((item) { 
        Asignacion asignacion = Asignacion.fromJson(item);
        toList.add(asignacion);
      });
      return toList;
    }

    factory Asignacion.fromJson(Map<String, dynamic> json) => Asignacion(
        id: json["id"],
        pabellon: json["pabellon"],
        aula: json["aula"],
        curso: json["curso"],
        profesor: json["profesor"],
        fecha: json["fecha"],
        hora_inicio: json["hora_inicio"],
        hora_fin: json["hora_fin"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "pabellon": pabellon,
        "aula": aula,
        "curso": curso,
        "profesor": profesor,
        "fecha": fecha,
        "hora_inicio": hora_inicio,
        "hora_fin": hora_fin,
    };
}