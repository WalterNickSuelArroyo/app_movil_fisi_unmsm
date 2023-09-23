import 'package:flutter/material.dart';

void main() {
  runApp(EditProfileApp());
}

class User {
  String name;
  String email;
  String password;
  DateTime birthDate;
  String profileImage;

  User({
    required this.name,
    required this.email,
    required this.password,
    required this.birthDate,
    required this.profileImage,
  });
}

class EditProfileApp extends StatelessWidget {
  final User user = User(
    name: 'Nombre de Usuario',
    email: 'usuario@example.com',
    password: 'contraseña',
    birthDate: DateTime(1990, 1, 1),
    profileImage: 'assets/profile_image.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ProfileScreen(user: user),
        '/edit': (context) => EditProfileScreen(user: user),
      },
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final User user;

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
              backgroundImage: AssetImage(user.profileImage),
            ),
            SizedBox(height: 20.0),
            Text(
              user.name,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Correo Electrónico: ${user.email}',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/edit');
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

class EditProfileScreen extends StatefulWidget {
  final User user;

  EditProfileScreen({required this.user});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordController.text = widget.user.password;
    birthDateController.text = widget.user.birthDate.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Nueva Contraseña'),
            ),
            TextFormField(
              controller: birthDateController,
              decoration: InputDecoration(labelText: 'Fecha de Nacimiento'),
            ),
            ElevatedButton(
              onPressed: () {
                widget.user.password = passwordController.text;
                widget.user.birthDate = DateTime.parse(birthDateController.text);
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
              ),
              child: Text('Guardar Cambios'),
            ),
          ],
        ),
      ),
    );
  }
}
