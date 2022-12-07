//ignore_for_file: implicit_dynamic_type
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:seeyoulaternavigator/presentation/pages/authentication/auth_state_router.dart';
import 'package:seeyoulaternavigator/presentation/pages/authentication/login/login_wrapper_screen.dart';
import 'package:seeyoulaternavigator/presentation/pages/menu/lotr/lotr_movie_detail_screen.dart';
import 'package:seeyoulaternavigator/presentation/pages/menu/lotr/lotr_movies_screen.dart';
import 'package:seeyoulaternavigator/presentation/pages/menu/main_screen.dart';
import 'package:seeyoulaternavigator/presentation/pages/menu/star_wars/star_wars_movie_detail_screen.dart';
import 'package:seeyoulaternavigator/presentation/pages/menu/star_wars/star_wars_movies_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      path: '/',
      name: 'AuthStateRouter',
      page: AuthStateRouter,
      children: [
        AutoRoute(
          path: 'login',
          page: LoginWrapperScreen,
          children: [
            CustomRoute(page: EmailScreen, transitionsBuilder: TransitionsBuilders.slideBottom),
            CustomRoute(page: PasswordScreen, transitionsBuilder: TransitionsBuilders.slideBottom),
          ],
        ),
        AutoRoute(
          path: 'main',
          page: MainScreen,
          children: [
            AutoRoute(
              path: 'starwars/movies',
              name: 'StarWarsRouter',
              page: EmptyRouterPage,
              children: [
                AutoRoute(path: '', page: StarWarsMoviesScreen),
                AutoRoute(path: ':id', page: StarWarsMovieDetailScreen),
              ],
            ),
            AutoRoute(
              path: 'lotr/movies',
              name: 'LotrRouter',
              page: EmptyRouterPage,
              children: [
                AutoRoute(path: '', page: LotrMoviesScreen),
                AutoRoute(path: ':id', page: LotrMovieDetailScreen),
              ],
            )
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
