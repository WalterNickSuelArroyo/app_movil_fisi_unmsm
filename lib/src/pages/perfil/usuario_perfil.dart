import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Perfil'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/profile_image.jpg'), // Cambia la ruta de la imagen
            ),
            SizedBox(height: 20.0),
            Text(
              'Nombre de Usuario',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Correo Electrónico: usuario@example.com',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              
              onPressed: () {
                // Agrega la lógica para editar el perfil aquí
                
              },
              style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Cambia el color de fondo del botón aquí
  ),
              child: Text('Editar Perfil'),
              
            ),
          ],
        ),
      ),
    );
  }
}
