import 'package:flutter/material.dart';

import '../data/movies_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: sampleMovies.length,
        itemBuilder: (context, index) {
          final movie = sampleMovies[index];
          return Card(
            child: ListTile(
              leading: Image.asset(
                movie.posterPath,
                width: 56,
                fit: BoxFit.cover,
              ),
              title: Text(movie.title),
              trailing: const Icon(Icons.chevron_right),
            ),
          );
        },
      ),
    );
  }
}
