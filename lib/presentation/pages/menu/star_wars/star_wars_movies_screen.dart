import 'package:flutter/material.dart';
import 'package:seeyoulaternavigator/presentation/common/widgets/movie_list.dart';

class StarWarsMoviesScreen extends StatelessWidget {
  const StarWarsMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/star_wars_bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: MovieList(type: MovieType.starWars),
    );
  }
}
