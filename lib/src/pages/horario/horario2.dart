// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cursos del Dia'),
      ),
      body: ScheduleList(),
    );
  }
}

class ScheduleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Horas desde las 7am hasta las 10pm
    Map<String, dynamic> horas_curso = {
      '06:00 AM': 'IOT seccion 1 / Profesor Barcalcel',
      '07:00 AM': 'IOT seccion 1 / Profesor Barcalcel',
      '08:00 AM': 'IOT seccion 1 / Profesor Barcalcel',
      '09:00 AM': 'IOT seccion 1 / Profesor Barcalcel',
      '10:00 AM': null,
      '11:00 AM': null,
      '12:00 PM': null,
      '01:00 PM': null,
      '02:00 PM': null,
      '03:00 PM': null,
      '04:00 PM': null,
      '05:00 PM': null,
      '06:00 PM': null,
      '07:00 PM': null,
      '08:00 PM': null,
      '09:00 PM': null,
      '10:00 PM': null,
    };

    return ListView.builder(
      itemCount: horas_curso.length,
      itemBuilder: (context, index) {
        String hora = horas_curso.keys.elementAt(index);
        dynamic value = horas_curso[hora];
        String curso = (value == null) ? 'Libre' : value.toString();

        return ListTile(
          title: Row(
            children: <Widget>[
              Container(
                //propiedades
                width: 100.0,
                height: 50.0,
                alignment: Alignment.center,

                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(hora),
                ),
              ),
              Container(
                //propiedades
                width: 300.0,
                height: 50.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.purple,
                ),
                padding: EdgeInsets.only(left: 16.0),
                margin: EdgeInsets.only(left: 16.0),

                child: Text(
                  curso,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
