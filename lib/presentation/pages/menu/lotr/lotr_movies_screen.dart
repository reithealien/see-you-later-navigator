import 'package:flutter/material.dart';
import 'package:seeyoulaternavigator/presentation/common/widgets/movie_list.dart';

class LotrMoviesScreen extends StatelessWidget {
  const LotrMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/lotr_bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: MovieList(type: MovieType.lotr),
    );
  }
}
