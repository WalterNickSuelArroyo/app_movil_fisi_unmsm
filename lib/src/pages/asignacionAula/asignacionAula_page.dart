
import 'package:app_movil_fisi_unmsm/src/pages/pabellon/pabellon_controller.dart';
import 'package:app_movil_fisi_unmsm/src/pages/pabellon/pabellon_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AsignacionAulaPage extends StatelessWidget {
  PabellonController con = Get.put(PabellonController());




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _textoAsignacion(),
              _textFieldCurso(),
              _textFieldProfesor(),
              _textFieldFecha(),
              _textFieldHoraInicio(),
              _textFieldHoraFin(),
              _buttonLogin(context),
            ],
          ),
        )
      ),
    );
  }
  Widget _textoAsignacion() {
    return Container(
      margin: EdgeInsets.only(top: 120),
      alignment: Alignment.center,
      child: Text(
        'Asignación del aula 101',
        style: GoogleFonts.poppins(
          color: const Color.fromRGBO(16, 54, 95, 1),
          fontSize: 34,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
  Widget _textFieldCurso() {
    return Container(
      margin: const EdgeInsets.only(left: 40, top: 55, bottom: 25),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Curso',
          prefixIcon: Icon(Icons.book)
        ),
      ),
    );
  }

  Widget _textFieldProfesor() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
      child: const TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Profesor',
          prefixIcon: Icon(Icons.person)
        ),
      ),
    );
  }
  Widget _textFieldFecha() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
      child: const TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Fecha',
          prefixIcon: Icon(Icons.calendar_month)
        ),
      ),
    );
  }
  Widget _textFieldHoraInicio() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
      child: const TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Hora de inicio',
          prefixIcon: Icon(Icons.timelapse_outlined)
        ),
      ),
    );
  }
  Widget _textFieldHoraFin() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
      child: const TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Hora de fin',
          prefixIcon: Icon(Icons.timelapse)
        ),
      ),
    );
  }
  Widget _buttonLogin(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 35),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PabellonPage();
          }));
        }, 
        style: ElevatedButton.styleFrom(
            padding:const EdgeInsets.symmetric(vertical: 20) ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
            )
          ),
        child: GestureDetector(
          onTap: () => con.goToPabellonAntiguoPage(),
          child: const Text(
            'Crear Aula',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20
            ),
          ),
        )
      ),
    );
  }

}