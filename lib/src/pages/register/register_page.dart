import 'package:flutter/material.dart';
import 'package:app_movil_fisi_unmsm/src/pages/register/register_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterController con = Get.put(RegisterController());

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: IconButton(
          onPressed: () => Get.back(), 
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(12, 41, 71, 1),
            size: 30,)
          ),
      )
    );
  }
  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25, left: 50, right: 50),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _registrarse(),
            _textFieldEmail(),
            _textFieldNombre(),
            _textFieldLastName(),
            _textFieldPhone(),
            _textFieldPassword(),
            _textFieldConfirPassword(),
            _buttonRegister(context),
            _textNoTienesCuenta(),
            
          ],
        ),
      )
    );
  }
  Widget _imageUser(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () => con.showAlertDialog(context),
          child: GetBuilder<RegisterController>(
            builder: (value) => CircleAvatar(
            backgroundImage: con.imageFile != null
            ? FileImage(con.imageFile!)
            : AssetImage('assets/img/user_profile.png') as ImageProvider,
            radius: 60,
            backgroundColor: Colors.white,
          ),)
        ),
      ),
    );
  }
  Widget _registrarse() {
    return Container(
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
  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
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
  Widget _textFieldNombre() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
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
      margin: const EdgeInsets.symmetric(vertical: 10),
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

  
  Widget _textFieldPhone() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
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
      margin: const EdgeInsets.symmetric(vertical: 10),
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
      margin: const EdgeInsets.symmetric(vertical: 10),
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
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
      child: ElevatedButton(
        onPressed: () {
          con.register(context);
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