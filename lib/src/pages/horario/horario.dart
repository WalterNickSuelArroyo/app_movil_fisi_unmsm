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
    Map<String, dynamic> hours = {
      '6:00 AM': 'IOT seccion 1 / Profesor Barcalcel',
      '7:00 AM': 'IOT seccion 1 / Profesor Barcalcel',
      '8:00 AM': 'IOT seccion 1 / Profesor Barcalcel',
      '9:00 AM': 'IOT seccion 1 / Profesor Barcalcel',
      '10:00 AM': 'IOT seccion 1 / Profesor Barcalcel',
      '11:00 AM': null,
      '12:00 PM': null,
      '1:00 PM': null,
      '2:00 PM': null,
      '3:00 PM': null,
      '4:00 PM': null,
      '5:00 PM': null,
      '6:00 PM': null,
      '7:00 PM': null,
      '8:00 PM': null,
      '9:00 PM': null,
      '10:00 PM': null,
    };

    return ListView.builder(
      itemCount: hours.length,
      itemBuilder: (context, index) {
        String hour = hours.keys.elementAt(index);
        dynamic value = hours[hour];
        String subtitleText = (value == null) ? 'Libre' : value.toString();

        return ListTile(
          title: Text(hour),
          subtitle: Text(subtitleText),
        );
      },
    );
  }
}
