import 'package:flutter/material.dart';

class Post {
  final String username;
  final String imageUrl;
  final String homename;
  final String description;

  Post({
    required this.username,
    required this.imageUrl,
    required this.homename,
    required this.description,
  });
}

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  final List<Post> posts = [
    Post(
      username: 'Usuario 1',
      imageUrl: 'https://rickandmortyapi.com/api/character/avatar/4.jpeg',
      homename: 'Casa 1',
      description: 'Descripción corta de la casa 1',
    ),
    Post(
      username: 'Usuario 2',
      imageUrl: 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
      homename: 'Hogar 2',
      description: 'Descripción corta del hogar 2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Publicaciones'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(post.imageUrl),
                    ),
                    title: Text(
                      post.username,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.network(post.imageUrl),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.homename,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          post.description,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Acción para dar like
                          },
                          icon: const Icon(Icons.favorite),
                          label: const Text('Agregar a favoritos'),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Acción para contactar
                          },
                          icon: const Icon(Icons.contact_mail),
                          label: const Text('Contactar'),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Acción para ver más detalles
                          },
                          icon: const Icon(Icons.visibility),
                          label: const Text('Ver más'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
