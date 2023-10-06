import 'package:app_movil_fisi_unmsm/src/pages/salon/salon_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PisoPage extends StatelessWidget {
  const PisoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _textoPiso(context),
              _textoPiso1(context),
              _textoPiso2(context),
              _textoPiso3(context)
            ],
          ),
        ));
  }

  Widget _textoPiso(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Seleccione\n        piso',
          style: GoogleFonts.poppins(
              fontSize: 38,
              color: const Color.fromRGBO(16, 54, 95, 1),
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _textoPiso1(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return SalonPage();
          },
        ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        height: MediaQuery.of(context).size.height * 0.17,
        margin: const EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(252, 147, 64, 1),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            '1',
            style: GoogleFonts.poppins(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget _textoPiso2(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return SalonPage();
          },
        ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        height: MediaQuery.of(context).size.height * 0.17,
        margin: const EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(252, 147, 64, 1),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            '2',
            style: GoogleFonts.poppins(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget _textoPiso3(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return SalonPage();
          },
        ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        height: MediaQuery.of(context).size.height * 0.17,
        margin: const EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(252, 147, 64, 1),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            '3',
            style: GoogleFonts.poppins(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
