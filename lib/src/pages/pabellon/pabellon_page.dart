import 'package:app_movil_fisi_unmsm/src/pages/piso/piso_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PabellonPage extends StatefulWidget {
  const PabellonPage({super.key});

  @override
  State<PabellonPage> createState() => _PabellonPageState();
}

class _PabellonPageState extends State<PabellonPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textoPabellon(context),
            _textoAntiguo(context),
            _textoNuevo(context)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.white,),
            activeIcon: Icon(Icons.home, color: Colors.white, size: 35,),
            label: 'Inicio',
            backgroundColor: Color.fromRGBO(224, 144, 11, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.white,),
            activeIcon: Icon(Icons.search, color: Colors.white, size: 35,),
            label: 'Buscar',
            backgroundColor: Color.fromRGBO(224, 144, 11, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline,color: Colors.white,),
            activeIcon: Icon(Icons.work, color: Colors.white, size: 35,),
            label: 'Tareas',
            backgroundColor: Color.fromRGBO(224, 144, 11, 1),
          )
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }

  Widget _textoPabellon(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Seleccione\n  pabellón',
          style: GoogleFonts.poppins(
            fontSize: 38,
            color: const Color.fromRGBO(16, 54, 95, 1),
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }

  Widget _textoAntiguo(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return PisoPage();
          },)
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        height: MediaQuery.of(context).size.height * 0.27,
        margin: const EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(252, 147, 64, 1),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Antiguo',
            style: GoogleFonts.poppins(
              fontSize: 38,
              color:  Colors.white,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }

  Widget _textoNuevo(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) {
            return PisoPage();
          },)
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        height: MediaQuery.of(context).size.height * 0.27,
        margin: const EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(252, 147, 64, 1),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Nuevo',
            style: GoogleFonts.poppins(
              fontSize: 38,
              color:  Colors.white,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}