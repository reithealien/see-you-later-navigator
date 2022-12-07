import 'package:flutter/material.dart';
import 'package:seeyoulaternavigator/presentation/theme/text_theme.dart';

class MovieTile extends StatelessWidget {
  const MovieTile._({
    super.key,
    required this.title,
    required this.titleStyle,
    required this.onTap,
  });

  MovieTile.starWars({
    required String title,
    required VoidCallback onTap,
    Key? key,
  }) : this._(
          key: key,
          title: title,
          titleStyle: AppTextTheme.instance.starWarsRegular.copyWith(
            color: const Color(0xffFFE81F),
          ),
          onTap: onTap,
        );

  MovieTile.lotr({
    required String title,
    required VoidCallback onTap,
    Key? key,
  }) : this._(
          key: key,
          title: title,
          titleStyle: AppTextTheme.instance.lotrRegular.copyWith(
            color: const Color(0xffd0b570),
          ),
          onTap: onTap,
        );

  final String title;
  final TextStyle titleStyle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Text(
          title,
          style: titleStyle,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      tileColor: Colors.white.withOpacity(0.1),
      onTap: onTap,
    );
  }
}
