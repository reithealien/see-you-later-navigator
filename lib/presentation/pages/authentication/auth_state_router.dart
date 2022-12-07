import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seeyoulaternavigator/presentation/pages/authentication/cubit/authentication_cubit.dart';
import 'package:seeyoulaternavigator/presentation/router/router.gr.dart';

class AuthStateRouter extends StatelessWidget {
  const AuthStateRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationCubit, AuthenticationState>(
      builder: (context, state) {
        return AutoRouter.declarative(routes: (context) {
          switch (state.status) {
            case AuthenticationStatus.authenticated:
              return const [MainRoute()];
            case AuthenticationStatus.unauthenticated:
              return const [LoginWrapperRoute()];
          }
        });
      },
    );
  }
}
