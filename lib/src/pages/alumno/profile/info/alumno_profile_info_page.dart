import 'package:app_movil_fisi_unmsm/src/pages/alumno/profile/info/alumno_profile_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AlumnoProfileInfoPage extends StatelessWidget {

  AlumnoProfileInfoController con = Get.put(AlumnoProfileInfoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Stack(
        children: [
          _backgroundCover(context),
          _boxForm(context),
          _imageUser(context),
          _buttonSignOut(),
        ],
      ),
    ));
  }
  Widget _backgroundCover(context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.37,
      color: Color.fromRGBO(252, 147, 64, 1),
    );
  }
  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
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
            _textName(),
            _textEmail(),
            _textPhone(),
            _buttonUpdate(context)
          ],
        ),
      ),
    );
  }
  Widget _buttonSignOut() {
    return SafeArea(
      child:  Container(
        margin: const EdgeInsets.only(right: 20, top: 10),
        alignment: Alignment.topRight,
        child: IconButton(
          onPressed: () => con.signOut(), 
          icon: const Icon(
            Icons.power_settings_new,
            color: Colors.white,
            size: 30,)
          ),
      )
    );
  }
  Widget _buttonUpdate(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: ElevatedButton(
        onPressed: () => con.goToProfileUpdate(), 
        style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(20, 68, 119, 1),
            padding:const EdgeInsets.symmetric(vertical: 15) 
          ),
        child: const Text(
          'ACTUALIZAR DATOS',
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
        child: CircleAvatar(
            backgroundImage: con.user.value.image != null
            ? NetworkImage(con.user.value.image!)
            : AssetImage('assets/img/user_profile.png') as ImageProvider,
            radius: 60,
            backgroundColor: Colors.white,
          ),)
    );
  }
  Widget _textEmail() {
    return ListTile(
        leading: Icon(Icons.email, color: Color.fromRGBO(20, 68, 119, 1),),
        title: Text(con.user.value.email ?? ''),
        subtitle: Text('Email'),
    );
  }
  Widget _textName() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ListTile(
        leading: Icon(Icons.person, color: Color.fromRGBO(20, 68, 119, 1),),
        title: Text(
          '${con.user.value.name ?? ''} ${con.user.value.lastname ?? ''}',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Color.fromRGBO(20, 68, 119, 1),
          ),
          ),
        subtitle: Text(
          'Nombre del usuario',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Color.fromRGBO(20, 68, 119, 1),
          ),
          ),
      )
    );
  }
  Widget _textPhone() {
    return ListTile(
        leading: Icon(Icons.phone, color: Color.fromRGBO(20, 68, 119, 1),),
        title: Text(con.user.value.phone ?? ''),
        subtitle: Text('Telefono'),
    );
  }
}