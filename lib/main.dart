import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seeyoulaternavigator/presentation/pages/authentication/cubit/authentication_cubit.dart';
import 'package:seeyoulaternavigator/presentation/router/router.gr.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => AuthenticationCubit(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Ver2go',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
