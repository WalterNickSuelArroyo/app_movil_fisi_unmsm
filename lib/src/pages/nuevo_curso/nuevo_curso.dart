import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: camel_case_types
class nuevoCurso extends StatefulWidget{
  const nuevoCurso({super.key});

  @override
  _nuevoCursoState createState()=> _nuevoCursoState();
}


// ignore: camel_case_types
class _nuevoCursoState extends State<nuevoCurso>{
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        //widgets hijos
                        _imagenTitulo(),
                        _titulo(),
                        _subtitulo(),
                        _opcionEscuela()
                    ]
                )
            )
        );
    }
}

Widget _imagenTitulo(){
    return SafeArea(
        child: Container(
            margin: const EdgeInsets.only(top: 90),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/img/img_nuevoCurso.svg'),
            ),
    );
}

Widget _titulo(){
    return Container(
        margin: const EdgeInsets.only(top: 45),
        alignment: Alignment.center,
        child: Text(
            'Nuevo Curso',
            style: GoogleFonts.montserrat(
                color: const Color.fromRGBO(16, 54, 95, 1),
                fontSize: 45,
                fontWeight: FontWeight.w800,
            ),
        ),
    );
}

Widget _subtitulo(){
    return Container(
        margin: const EdgeInsets.only(top: 45),
        alignment: Alignment.center,
        child: Text(
            'Ingrese esta información',
            style: GoogleFonts.montserrat(
                color: const Color.fromRGBO(16, 54, 95, 1),
                fontSize: 25,
                fontWeight: FontWeight.w500,
            ),
        ),
    );
}

Widget _opcionEscuela(){
    
    return Container(
        margin: const EdgeInsets.only(top: 45),
        alignment: Alignment.center,
        child: Column(
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: SvgPicture.asset('assets/img/carta.svg'),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Escuela',
                              style: GoogleFonts.montserrat(
                                  color: const Color.fromRGBO(16, 54, 95, 1),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                          Text(
                              'Ingenieria de Software',
                               style: GoogleFonts.montserrat(
                                  color: const Color.fromRGBO(77, 77, 77, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                        ],
                      ),
                  ],
                )
            ]
        ),
    );
}