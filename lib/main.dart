import 'package:flutter/material.dart';
import 'createacount.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CASA-UNI Login',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/depalogin.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 12.0), // Eliminado el espacio en blanco superior
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100, // Definir altura para el logo
                      child: Image.asset(
                        "assets/images/logo.jpg",
                        height: 100, // Definir altura para el logo
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Bienvenido a CASA-UNI',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 16),
                    LoginForm(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Correo Electrónico',
            hintText: 'Digite su correo electrónico',
          ),
        ),
        SizedBox(height: 16),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Contraseña',
            hintText: 'Digite su contraseña',
          ),
        ),
        SizedBox(
            height:
                8), // Reducido el espacio entre el campo de contraseña y el checkbox
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              value:
                  false, // El valor inicial del checkbox (recordar contraseña)
              onChanged: (bool? value) {
                // Manejar cambios en el valor del checkbox aquí
              },
            ),
            Text('Recordar contraseña'), // Texto al lado del checkbox
          ],
        ),
        SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            // Implementar lógica de inicio de sesión aquí
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: Text('Ingresar'),
        ),
        SizedBox(height: 16),
        TextButton(
          onPressed: () {
            // Implementar lógica de olvido de contraseña aquí
          },
          child: Text('¿Olvidaste tu contraseña?'),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("¿No tienes cuenta?"),
            TextButton(
              onPressed: () {
                // Navegar a la página de creación de cuenta
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateAccountPage()),
                );
              },
              child: Text('Crear cuenta'),
            ),
          ],
        ),
      ],
    );
  }
}
