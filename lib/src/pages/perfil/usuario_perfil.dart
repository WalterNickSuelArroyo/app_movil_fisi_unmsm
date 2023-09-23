import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class User {
  final String name;
  final String email;

  User(this.name, this.email);
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulamos obtener la información del usuario desde alguna fuente
    final user = User('Nombre de Usuario2', 'usuario@example.com');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(user: user), // Pasamos el usuario a la pantalla de perfil
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final User user; // Recibimos el usuario como argumento

  ProfileScreen({required this.user});

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
              backgroundImage: AssetImage('assets/profile_image.jpg'),
            ),
            SizedBox(height: 20.0),
            Text(
              user.name, // Mostramos el nombre del usuario
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Correo Electrónico: ${user.email}', // Mostramos el correo del usuario
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
                primary: Colors.orange,
              ),
              child: Text('Editar Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
