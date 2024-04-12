import 'package:flutter/material.dart';

void main() {
  runApp(CreateAccountPage());
}

class CreateAccountPage extends StatelessWidget {
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
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 12.0,
                  ), // Eliminado el espacio en blanco superior
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
                        'Crear cuenta',
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(height: 16),
                      CreateAccountForm(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateAccountForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Nombre',
          ),
        ),
        SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            labelText: 'Apellidos',
          ),
        ),
        SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            labelText: 'Correo Electrónico',
          ),
        ),
        SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            labelText: 'Número de Teléfono',
          ),
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 16),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Contraseña',
          ),
        ),
        SizedBox(height: 16),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Confirmar contraseña',
          ),
        ),
        SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            // Implementar lógica de creación de cuenta aquí
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            minimumSize: Size(
                double.infinity, 50), // Ajustar el ancho y la altura del botón
          ),
          child: Text('Crear Cuenta'),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("¿Ya tienes cuenta?"),
            TextButton(
              onPressed: () {
                // Navegar de regreso al formulario de inicio de sesión
                Navigator.pop(context);
              },
              child: Text('Iniciar sesión'),
            ),
          ],
        ),
      ],
    );
  }
}
