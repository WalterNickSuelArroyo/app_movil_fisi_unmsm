import 'dart:convert';

Curso cursoFromJson(String str) => Curso.fromJson(json.decode(str));

String cursoToJson(Curso data) => json.encode(data.toJson());

class Curso {
    String? id;
    String? escuela;
    String? ciclo;
    String? materia;

    Curso({
        this.id,
        this.escuela,
        this.ciclo,
        this.materia, 
    });

    static List<Curso> fromJsonList (List<dynamic> jsonList) {
      List<Curso> toList = [];
      jsonList.forEach((item) { 
        Curso curso = Curso.fromJson(item);
        toList.add(curso);
      });
      return toList;
    }

    factory Curso.fromJson(Map<String, dynamic> json) => Curso(
        id: json["id"],
        escuela: json["escuela"],
        ciclo: json["ciclo"],
        materia: json["materia"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "escuela": escuela,
        "ciclo": ciclo,
        "materia": materia,
    };
}