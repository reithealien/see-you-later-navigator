import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:seeyoulaternavigator/domain/data.dart';
import 'package:seeyoulaternavigator/domain/movie.dart';
import 'package:seeyoulaternavigator/presentation/common/widgets/movie_tile.dart';
import 'package:seeyoulaternavigator/presentation/router/router.gr.dart';

enum MovieType { starWars, lotr }

class MovieList extends StatefulWidget {
  const MovieList({
    super.key,
    required this.type,
  });

  final MovieType type;

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  late List<Movie> movies;

  @override
  void initState() {
    super.initState();
    movies = widget.type == MovieType.starWars ? Data.starWarsMovies : Data.lotrMovies;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: ListView.separated(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final item = movies[index];
              return widget.type == MovieType.starWars
                  ? MovieTile.starWars(
                      title: item.title,
                      onTap: () => context.router.push(StarWarsMovieDetailRoute(id: item.id)),
                    )
                  : MovieTile.lotr(
                      title: item.title,
                      onTap: () => context.router.push(LotrMovieDetailRoute(id: item.id)),
                    );
            },
            separatorBuilder: (context, index) => const Divider(),
          ),
        ),
      ),
    );
  }
}
