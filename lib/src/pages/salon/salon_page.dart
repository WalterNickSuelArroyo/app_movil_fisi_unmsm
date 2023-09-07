import 'package:app_movil_fisi_unmsm/src/pages/asignacionAula/asignacionAula_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalonPage extends StatelessWidget {
  const SalonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textoPiso(context),
            _filaPrimera(context),
            _filaSegunda(context),
            _filaTercera(context),
            _filaCuarta(context),
            _filaQuinta(context),
          ],
        ),
      )
    );
  }
  Widget _textoPiso(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Seleccione\n      salón',
          style: GoogleFonts.poppins(
            fontSize: 38,
            color: const Color.fromRGBO(16, 54, 95, 1),
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
  Widget _filaPrimera(BuildContext context) {
    return Row(
      children: [
        _piso101(context),
        _piso102(context),
        _piso103(context)
      ],
    );
  }
  Widget _filaSegunda(BuildContext context) {
    return Row(
      children: [
        _piso104(context),
        _piso105(context),
        _piso106(context)
      ],
    );
  }
  Widget _filaTercera(BuildContext context) {
    return Row(
      children: [
        _piso107(context),
        _piso108(context),
        _piso109(context)
      ],
    );
  }
  Widget _filaCuarta(BuildContext context) {
    return Row(
      children: [
        _piso110(context),
        _piso111(context),
        _piso112(context)
      ],
    );
  }
  Widget _filaQuinta(BuildContext context) {
    return Row(
      children: [
        _piso113(context),
        _piso114(context),
        _piso115(context)
      ],
    );
  }
  Widget _piso101(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return const AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 52, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '101',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso102(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 62, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '102',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso103(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 62, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '103',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso104(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 52, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '104',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso105(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 62, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '105',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso106(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 62, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '106',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso107(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 52, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '107',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso108(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 62, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '108',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso109(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 62, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '109',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso110(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 52, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '110',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso111(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 62, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '111',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso112(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 62, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '112',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso113(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 52, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '113',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso114(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 62, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '114',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
  Widget _piso115(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return AsignacionAulaPage();
          },),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 62, top: 40),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(179, 115, 9, 1),
            width: 2
          )
        ),
        child: Center(
          child: Text(
            '115',
            style: GoogleFonts.poppins(
              fontSize: 39,
              color: const Color.fromRGBO(179, 115, 9, 1),
              fontWeight: FontWeight.w600,
              letterSpacing: -1
            ),
          ),
        ),
      ),
    );
  }
}