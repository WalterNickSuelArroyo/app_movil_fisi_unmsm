import 'package:app_movil_fisi_unmsm/src/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BienvenidaPage extends StatelessWidget {
  BienvenidaPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginPage(),
    ));
  });
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _imagenMarca(),
            _nombreMarca(),
            _fraseMarca(),
          ],
        ),
      )
    );
  }
  Widget _imagenMarca() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 310),
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
  Widget _fraseMarca() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        'Mejoramos tu experiencia...',
        style: GoogleFonts.montserrat(
          color: const Color.fromRGBO(16, 54, 95, 1),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}