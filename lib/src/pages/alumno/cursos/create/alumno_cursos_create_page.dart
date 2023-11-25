import 'package:app_movil_fisi_unmsm/src/pages/alumno/cursos/create/alumno_cursos_create_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AlumnoCursosCreatePage extends StatelessWidget {

  AlumnoCursoCreateController con = Get.put(AlumnoCursoCreateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _boxForm(context),
          _textNewCurso(context),
        ],
      ),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25, left: 50, right: 50),
      decoration: const BoxDecoration(
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textFieldEscuela(),
            _textFieldCiclo(),
            _textFieldCurso(),
            _buttonCreate(context)
          ],
        ),
      ),
    );
  }
  Widget _textFieldEscuela() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.escuelaController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Escuela',
          prefixIcon: Icon(Icons.category)
        ),
      ),
    );
  }

  Widget _textFieldCiclo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.cicloController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Ciclo',
          prefixIcon: Icon(Icons.category)
        ),
      ),
    );
  }
  Widget _textFieldCurso() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.materiaController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Materia',
          prefixIcon: Icon(Icons.category)
        ),
      ),
    );
  }
  Widget _buttonCreate(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: ElevatedButton(
        onPressed: () => con.createAsignacion(),
        style: ElevatedButton.styleFrom(
            padding:const EdgeInsets.symmetric(vertical: 15) 
          ),
        child: const Text(
          'Crear Curso',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 16
          ),
        )
      ),
    );
  }
  Widget _textNewCurso(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 45),
        alignment: Alignment.topCenter,
        child: const Column(
          children: [
            Text(
              'Nuevo curso',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23
              ),
              ),
          ],
        ),
      ),
    );
  }
}