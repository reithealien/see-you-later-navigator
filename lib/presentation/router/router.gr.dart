// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:auto_route/empty_router_widgets.dart' as _i4;
import 'package:flutter/material.dart' as _i10;

import '../pages/authentication/auth_state_router.dart' as _i1;
import '../pages/authentication/login/login_wrapper_screen.dart' as _i2;
import '../pages/menu/lotr/lotr_movie_detail_screen.dart' as _i8;
import '../pages/menu/lotr/lotr_movies_screen.dart' as _i7;
import '../pages/menu/main_screen.dart' as _i3;
import '../pages/menu/star_wars/star_wars_movie_detail_screen.dart' as _i6;
import '../pages/menu/star_wars/star_wars_movies_screen.dart' as _i5;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AuthStateRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AuthStateRouter(),
      );
    },
    LoginWrapperRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginWrapperScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    EmailRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.EmailScreen(),
        transitionsBuilder: _i9.TransitionsBuilders.slideBottom,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PasswordRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.PasswordScreen(),
        transitionsBuilder: _i9.TransitionsBuilders.slideBottom,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StarWarsRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    LotrRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    StarWarsMoviesRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.StarWarsMoviesScreen(),
      );
    },
    StarWarsMovieDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<StarWarsMovieDetailRouteArgs>(
          orElse: () => StarWarsMovieDetailRouteArgs(id: pathParams.getInt('id')));
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.StarWarsMovieDetailScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    LotrMoviesRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.LotrMoviesScreen(),
      );
    },
    LotrMovieDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<LotrMovieDetailRouteArgs>(
          orElse: () => LotrMovieDetailRouteArgs(id: pathParams.getInt('id')));
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.LotrMovieDetailScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          AuthStateRouter.name,
          path: '/',
          children: [
            _i9.RouteConfig(
              LoginWrapperRoute.name,
              path: 'login',
              parent: AuthStateRouter.name,
              children: [
                _i9.RouteConfig(
                  EmailRoute.name,
                  path: 'email-screen',
                  parent: LoginWrapperRoute.name,
                ),
                _i9.RouteConfig(
                  PasswordRoute.name,
                  path: 'password-screen',
                  parent: LoginWrapperRoute.name,
                ),
              ],
            ),
            _i9.RouteConfig(
              MainRoute.name,
              path: 'main',
              parent: AuthStateRouter.name,
              children: [
                _i9.RouteConfig(
                  StarWarsRouter.name,
                  path: 'starwars/movies',
                  parent: MainRoute.name,
                  children: [
                    _i9.RouteConfig(
                      StarWarsMoviesRoute.name,
                      path: '',
                      parent: StarWarsRouter.name,
                    ),
                    _i9.RouteConfig(
                      StarWarsMovieDetailRoute.name,
                      path: ':id',
                      parent: StarWarsRouter.name,
                    ),
                  ],
                ),
                _i9.RouteConfig(
                  LotrRouter.name,
                  path: 'lotr/movies',
                  parent: MainRoute.name,
                  children: [
                    _i9.RouteConfig(
                      LotrMoviesRoute.name,
                      path: '',
                      parent: LotrRouter.name,
                    ),
                    _i9.RouteConfig(
                      LotrMovieDetailRoute.name,
                      path: ':id',
                      parent: LotrRouter.name,
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.AuthStateRouter]
class AuthStateRouter extends _i9.PageRouteInfo<void> {
  const AuthStateRouter({List<_i9.PageRouteInfo>? children})
      : super(
          AuthStateRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AuthStateRouter';
}

/// generated route for
/// [_i2.LoginWrapperScreen]
class LoginWrapperRoute extends _i9.PageRouteInfo<void> {
  const LoginWrapperRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginWrapperRoute.name,
          path: 'login',
          initialChildren: children,
        );

  static const String name = 'LoginWrapperRoute';
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: 'main',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.EmailScreen]
class EmailRoute extends _i9.PageRouteInfo<void> {
  const EmailRoute()
      : super(
          EmailRoute.name,
          path: 'email-screen',
        );

  static const String name = 'EmailRoute';
}

/// generated route for
/// [_i2.PasswordScreen]
class PasswordRoute extends _i9.PageRouteInfo<void> {
  const PasswordRoute()
      : super(
          PasswordRoute.name,
          path: 'password-screen',
        );

  static const String name = 'PasswordRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class StarWarsRouter extends _i9.PageRouteInfo<void> {
  const StarWarsRouter({List<_i9.PageRouteInfo>? children})
      : super(
          StarWarsRouter.name,
          path: 'starwars/movies',
          initialChildren: children,
        );

  static const String name = 'StarWarsRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class LotrRouter extends _i9.PageRouteInfo<void> {
  const LotrRouter({List<_i9.PageRouteInfo>? children})
      : super(
          LotrRouter.name,
          path: 'lotr/movies',
          initialChildren: children,
        );

  static const String name = 'LotrRouter';
}

/// generated route for
/// [_i5.StarWarsMoviesScreen]
class StarWarsMoviesRoute extends _i9.PageRouteInfo<void> {
  const StarWarsMoviesRoute()
      : super(
          StarWarsMoviesRoute.name,
          path: '',
        );

  static const String name = 'StarWarsMoviesRoute';
}

/// generated route for
/// [_i6.StarWarsMovieDetailScreen]
class StarWarsMovieDetailRoute extends _i9.PageRouteInfo<StarWarsMovieDetailRouteArgs> {
  StarWarsMovieDetailRoute({
    _i10.Key? key,
    required int id,
  }) : super(
          StarWarsMovieDetailRoute.name,
          path: ':id',
          args: StarWarsMovieDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'StarWarsMovieDetailRoute';
}

class StarWarsMovieDetailRouteArgs {
  const StarWarsMovieDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i10.Key? key;

  final int id;

  @override
  String toString() {
    return 'StarWarsMovieDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.LotrMoviesScreen]
class LotrMoviesRoute extends _i9.PageRouteInfo<void> {
  const LotrMoviesRoute()
      : super(
          LotrMoviesRoute.name,
          path: '',
        );

  static const String name = 'LotrMoviesRoute';
}

/// generated route for
/// [_i8.LotrMovieDetailScreen]
class LotrMovieDetailRoute extends _i9.PageRouteInfo<LotrMovieDetailRouteArgs> {
  LotrMovieDetailRoute({
    _i10.Key? key,
    required int id,
  }) : super(
          LotrMovieDetailRoute.name,
          path: ':id',
          args: LotrMovieDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'LotrMovieDetailRoute';
}

class LotrMovieDetailRouteArgs {
  const LotrMovieDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i10.Key? key;

  final int id;

  @override
  String toString() {
    return 'LotrMovieDetailRouteArgs{key: $key, id: $id}';
  }
}
