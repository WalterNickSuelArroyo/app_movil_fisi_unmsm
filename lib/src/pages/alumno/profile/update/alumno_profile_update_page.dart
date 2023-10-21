import 'package:app_movil_fisi_unmsm/src/pages/alumno/profile/update/alumno_profile_update_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: must_be_immutable
class AlumnoProfileUpdatePage extends StatelessWidget {

  AlumnoProfileUpdaterController con = Get.put(AlumnoProfileUpdaterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundCover(context),
          _boxForm(context),
          _imageUser(context),
          _buttonBack()
        ],
      ),
    );
  }

  Widget _buttonBack() {
    return SafeArea(
      child:  Container(
        margin: const EdgeInsets.only(left: 20, top: 10),
        child: IconButton(
          onPressed: () => Get.back(), 
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,)
          ),
      )
    );
  }

  Widget _backgroundCover(context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      color: Color.fromRGBO(252, 147, 64, 1),
    );
  }
  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25, left: 50, right: 50),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15,
            offset: Offset(0, 0.75)
          )
        ]
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textYourInfo(),
            _textFieldName(),
            _textFielLastdName(),
            _textFielPhone(),
            _buttonUpdate(context)
          ],
        ),
      ),
    );
  }
  Widget _textFieldName() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.nameController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Nombre',
          prefixIcon: Icon(Icons.person)
        ),
      ),
    );
  }

  Widget _textFielLastdName() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.lastNameController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Apellidos',
          prefixIcon: Icon(Icons.person_outline)
        ),
      ),
    );
  }

  Widget _textFielPhone() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.phoneController,
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          hintText: 'Telefono',
          prefixIcon: Icon(Icons.phone)
        ),
      ),
    );
  }

  Widget _buttonUpdate(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: ElevatedButton(
        onPressed: () => con.updateInfo(context),
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(20, 68, 119, 1),
            padding:const EdgeInsets.symmetric(vertical: 15) 
          ),
        child: const Text(
          'ACTUALIZAR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 16
          ),
        )
      ),
    );
  }

  Widget _imageUser(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () => con.showAlertDialog(context),
          child: GetBuilder<AlumnoProfileUpdaterController>(
            builder: (value) => CircleAvatar(
            backgroundImage: con.imageFile != null
            ? FileImage(con.imageFile!)
            : con.user.image != null
              ? NetworkImage(con.user.image!)
              : AssetImage('assets/img/user_profile.png') as ImageProvider,
            radius: 60,
            backgroundColor: Colors.white,
          ),)
        ),
      ),
    );
  }

  Widget _textYourInfo() {
    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 20),
      child: const Text(
        'INGRESA ESTA INFORMACION',
        style: TextStyle(
          color: Colors.black,
          fontSize: 17
        ),
      ),
    );
  }
}