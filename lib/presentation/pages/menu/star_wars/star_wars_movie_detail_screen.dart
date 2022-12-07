import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:seeyoulaternavigator/presentation/common/widgets/movie_detail.dart';
import 'package:seeyoulaternavigator/presentation/common/widgets/movie_list.dart';

class StarWarsMovieDetailScreen extends StatelessWidget {
  const StarWarsMovieDetailScreen({
    super.key,
    @PathParam() required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      type: MovieType.starWars,
      id: id,
    );
  }
}
