import 'package:app_movil_fisi_unmsm/src/pages/alumno/fisichat/alumno_fisiChat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AlumnoFisiChatPage extends StatelessWidget {
  AlumnoFisiChatController con = Get.put(AlumnoFisiChatController());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Chatbot'),
        // Puedes reemplazar esto con el contenido real de tu página
      ),
    );
  }
}
