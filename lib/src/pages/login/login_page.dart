import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _imagenMarca(),
            _nombreMarca(),
            _iniciarSesion(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
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
        'FISIhelp',
        style: GoogleFonts.montserrat(
          color: const Color.fromRGBO(16, 54, 95, 1),
          fontSize: 45,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
  Widget _iniciarSesion() {
    return Container(
      margin: const EdgeInsets.only(top: 100, left: 40),
      child: Text(
        'Iniciar sesión',
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
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo institucional',
          prefixIcon: Icon(Icons.email)
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: const TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          prefixIcon: Icon(Icons.lock)
        ),
      ),
    );
  }
  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 35),
      child: ElevatedButton(
        onPressed: () {
        }, 
        style: ElevatedButton.styleFrom(
            padding:const EdgeInsets.symmetric(vertical: 20) ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
            )
          ),
        child: const Text(
          'Iniciar sesión',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17
          ),
        )
      ),
    );
  }

}