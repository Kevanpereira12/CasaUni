import 'package:flutter/material.dart';

import 'pages/favorite.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Casa Uni',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Casa Uni App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _pageIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    const FavHome(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            Expanded(
              child: TextField(
                style: const TextStyle(
                    color:
                        Colors.white), // Estilo del texto dentro del TextField
                decoration: InputDecoration(
                  hintText: 'Buscar',
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(
                          0.5)), // Estilo del texto de sugerencia (hint)
                  border: InputBorder.none, // Sin borde
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Acción al presionar el botón de búsqueda
              },
            ),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.account_circle_rounded),
          onPressed: () {
            // Acción al presionar el botón del perfil
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Acción al presionar el botón del menú
            },
          ),
        ],
      ),
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favoritas'),
        ],
      ),
    );
  }
}
