import 'package:flutter/material.dart';
import 'package:app_movil_fisi_unmsm/src/pages/register/register_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterController con = Get.put(RegisterController());

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _imagenMarca(),
            _nombreMarca(),
            _registrarse(),
            _textFieldEmail(),
            _textFieldNombre(),
            _textFieldLastName(),
            _textFieldPhone(),
            _textFieldPassword(),
            _textFieldConfirPassword(),
            _buttonRegister(context),
            _textNoTienesCuenta()
          ],
        ),
      )
    );
  }
  Widget _imagenMarca() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 90),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          'assets/img/marca.svg'
        )
      ),
    );
  }
  Widget _nombreMarca() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'AulaFinder',
        style: GoogleFonts.montserrat(
          color: const Color.fromRGBO(16, 54, 95, 1),
          fontSize: 45,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
  Widget _registrarse() {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 40),
      child: Text(
        'Registrarse',
        style: GoogleFonts.montserrat(
          color: const Color.fromRGBO(56, 56, 56, 1),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  Widget _textFieldNombre() {
    return Container(
      margin: const EdgeInsets.only(left: 40, top: 30, bottom: 10,right: 40),
      child: TextField(
        controller: con.nameController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: 'Nombre',
          prefixIcon: Icon(Icons.person)
        ),
      ),
    );
  }
  Widget _textFieldLastName() {
    return Container(
      margin: const EdgeInsets.only(left: 40, top: 30, bottom: 10,right: 40),
      child: TextField(
        controller: con.lastNameController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: 'Apellidos',
          prefixIcon: Icon(Icons.person_outline)
        ),
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: TextField(
        controller: con.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: 'Correo institucional',
          prefixIcon: Icon(Icons.email)
        ),
      ),
    );
  }
  Widget _textFieldPhone() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.phoneController,
        keyboardType: TextInputType.phone,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Telefono',
          prefixIcon: Icon(Icons.phone)
        ),
      ),
    );
  }
  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.passwordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Contraseña',
          prefixIcon: Icon(Icons.lock)
        ),
      ),
    );
  }

  Widget _textFieldConfirPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        controller: con.confirmPasswordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Confirmar contraseña',
          prefixIcon: Icon(Icons.lock)
        ),
      ),
    );
  }
  Widget _buttonRegister(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 35),
      child: ElevatedButton(
        onPressed: () {
          con.register();
        }, 
        style: ElevatedButton.styleFrom(
            padding:const EdgeInsets.symmetric(vertical: 20) ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
            )
          ),
          child: const Text(
            'Registrarse',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 17
            ),
          ),
      )
    );
  }
  Widget _textNoTienesCuenta() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '¿Ya tienes una cuenta?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17
          ),
          ),
        const SizedBox(width: 10,),
        GestureDetector(
          onTap: () => con.goToLoginPage(),
          child: const Text(
            'Inciar sesión',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 17
            ),
            ),
        ),
      ],
    );
  }

}