import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:seeyoulaternavigator/presentation/common/widgets/movie_detail.dart';
import 'package:seeyoulaternavigator/presentation/common/widgets/movie_list.dart';

class LotrMovieDetailScreen extends StatelessWidget {
  const LotrMovieDetailScreen({
    super.key,
    @PathParam() required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      type: MovieType.lotr,
      id: id,
    );
  }
}
