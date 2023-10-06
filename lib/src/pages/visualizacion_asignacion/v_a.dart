import 'package:app_movil_fisi_unmsm/src/pages/horario/horario2.dart';
import 'package:flutter/material.dart';
import 'package:app_movil_fisi_unmsm/src/pages/asignacionAula/asignacionAula_page.dart';
//import 'package:app_movil_fisi_unmsm/src/pages/horario/horario.dart';
import 'package:google_fonts/google_fonts.dart';

class v_a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          backgroundColor: const Color.fromRGBO(252, 147, 64, 1),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Seleccione',
                    style: GoogleFonts.poppins(
                        fontSize: 38,
                        color: const Color.fromRGBO(16, 54, 95, 1),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AsignacionAulaPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(252, 147, 64, 1),
                    textStyle: TextStyle(
                      fontSize: 18,
                    ),
                    padding: EdgeInsets.all(50.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    'Reservar horario',
                    style: TextStyle(
                      fontSize: 38,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScheduleScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(252, 147, 64, 1),
                    padding: EdgeInsets.all(50.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    'Ver cursos del aula',
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
