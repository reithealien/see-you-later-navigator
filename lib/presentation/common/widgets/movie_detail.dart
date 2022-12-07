import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:seeyoulaternavigator/domain/data.dart';
import 'package:seeyoulaternavigator/domain/movie.dart';
import 'package:seeyoulaternavigator/presentation/common/widgets/movie_list.dart';
import 'package:seeyoulaternavigator/presentation/theme/text_theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({
    super.key,
    required this.type,
    required this.id,
  });

  final MovieType type;
  final int id;

  @override
  Widget build(BuildContext context) {
    final panelController = PanelController();
    final movie = type == MovieType.starWars ? Data.starWarsMovies[id] : Data.lotrMovies[id];
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: MediaQuery.of(context).size.height * 0.7,
        minHeight: MediaQuery.of(context).size.height * 0.2,
        controller: panelController,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(17)),
        body: _MovieDetailPoster(
          type: type,
          posterUrl: movie.posterUrl,
        ),
        panelBuilder: ((controller) => _MovieDetailPanel(
              type: type,
              movie: movie,
              panelController: panelController,
              controller: controller,
            )),
      ),
    );
  }
}

class _MovieDetailPoster extends StatelessWidget {
  const _MovieDetailPoster({
    Key? key,
    required this.type,
    required this.posterUrl,
  }) : super(key: key);

  final MovieType type;
  final String posterUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          posterUrl,
          fit: BoxFit.fill,
        ),
        IconButton(
          onPressed: () => context.router.pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: type == MovieType.starWars ? const Color(0xffFFE81F) : const Color(0xffd0b570),
            size: 30,
          ),
        ),
      ],
    );
  }
}

class _MovieDetailPanel extends StatelessWidget {
  const _MovieDetailPanel({
    Key? key,
    required this.type,
    required this.movie,
    required this.panelController,
    required this.controller,
  }) : super(key: key);

  final MovieType type;
  final Movie movie;
  final ScrollController controller;
  final PanelController panelController;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: type == MovieType.starWars ? Colors.black : const Color(0xff101010)),
      child: ListView(
        controller: controller,
        children: [
          InkWell(
            onTap: () => panelController.isPanelOpen ? panelController.close() : panelController.open(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: 30,
                  decoration: BoxDecoration(
                    color: type == MovieType.starWars ? const Color(0xffFFE81F) : const Color(0xffd0b570),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            movie.title,
            style: type == MovieType.starWars
                ? AppTextTheme.instance.starWarsTitle.copyWith(color: const Color(0xffFFE81F))
                : AppTextTheme.instance.lotrTitle.copyWith(color: const Color(0xffd0b570)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Text(
            'By ${movie.director}',
            style: type == MovieType.starWars
                ? AppTextTheme.instance.starWarsRegular.copyWith(color: const Color(0xffFFE81F))
                : AppTextTheme.instance.lotrRegular.copyWith(color: const Color(0xffd0b570)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            Jiffy(movie.releaseDate).yMMMMd,
            style: type == MovieType.starWars
                ? AppTextTheme.instance.starWarsSmall.copyWith(color: const Color(0xffFFE81F))
                : AppTextTheme.instance.lotrSmall.copyWith(color: const Color(0xffd0b570)),
            textAlign: TextAlign.center,
          ),
          if (movie.openingCrawl != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                movie.openingCrawl!,
                style: type == MovieType.starWars
                    ? AppTextTheme.instance.starWarsSmall.copyWith(color: const Color(0xffFFE81F))
                    : AppTextTheme.instance.lotrSmall.copyWith(color: const Color(0xffd0b570)),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
