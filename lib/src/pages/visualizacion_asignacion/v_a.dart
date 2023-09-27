import 'package:flutter/material.dart';
import 'package:app_movil_fisi_unmsm/src/pages/asignacionAula/asignacionAula_page.dart';
import 'package:app_movil_fisi_unmsm/src/pages/horario/horario.dart';

class v_a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('eleccion de accion(beta)'),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AsignacionAulaPage()));
                  },
                  child: const Text('Reservar horario')),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScheduleScreen()));
                  },
                  child: const Text('Ver cursos del aula')),
            ],
          ),
        ),
      ),
    );
  }
}
