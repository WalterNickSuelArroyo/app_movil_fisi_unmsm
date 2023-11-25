import 'package:app_movil_fisi_unmsm/src/pages/administrador/asignaciones/create/administrador_asignaciones_create_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AdministradorAsignacionesCreatePage extends StatelessWidget {

  AdministradorAsignacionesCreateController con = Get.put(AdministradorAsignacionesCreateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _boxForm(context),
          _textNewAsignacion(context),
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
            _textFieldPabellon(),
            _textFieldAula(),
            _textFieldCurso(),
            _textFieldProfesor(),
            _textFieldFecha(),
            _textFieldHoraInicio(),
            _textFieldHoraFin(),
            _buttonCreate(context)
          ],
        ),
      ),
    );
  }
  Widget _textFieldPabellon() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.pabellonController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Pabellon',
          prefixIcon: Icon(Icons.category)
        ),
      ),
    );
  }

  Widget _textFieldAula() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.aulaController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Aula',
          prefixIcon: Icon(Icons.category)
        ),
      ),
    );
  }
  Widget _textFieldCurso() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.cursoController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Curso',
          prefixIcon: Icon(Icons.category)
        ),
      ),
    );
  }
  Widget _textFieldProfesor() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.profesorController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Profesor',
          prefixIcon: Icon(Icons.category)
        ),
      ),
    );
  }
  Widget _textFieldFecha() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.fechaController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Fecha',
          prefixIcon: Icon(Icons.category)
        ),
      ),
    );
  }
  Widget _textFieldHoraInicio() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.horaInicioController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Hora de Inicio',
          prefixIcon: Icon(Icons.category)
        ),
      ),
    );
  }
  Widget _textFieldHoraFin() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.horaFinController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Hora de Fin',
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
          'Crear Aula',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 16
          ),
        )
      ),
    );
  }

  Widget _textNewAsignacion(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 45),
        alignment: Alignment.topCenter,
        child: const Column(
          children: [
            Text(
              'Agregar asignación',
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