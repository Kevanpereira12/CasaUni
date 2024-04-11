import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class FavHome extends StatefulWidget {
  const FavHome({super.key});

  @override
  State<FavHome> createState() => _FavHomeState();
}

class _FavHomeState extends State<FavHome> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Favorite page'),
    );
  }
}
