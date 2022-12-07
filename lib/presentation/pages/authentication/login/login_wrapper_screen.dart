import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seeyoulaternavigator/presentation/common/widgets/input_decoration.dart';
import 'package:seeyoulaternavigator/presentation/pages/authentication/cubit/authentication_cubit.dart';
import 'package:seeyoulaternavigator/presentation/common/extensions/email_extension.dart';
import 'package:seeyoulaternavigator/presentation/router/router.gr.dart';

part 'email_screen.dart';
part 'password_screen.dart';

final loginFormKey = GlobalKey<FormState>();

class LoginWrapperScreen extends StatelessWidget {
  const LoginWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
      child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
          return AutoRouter.declarative(
            routes: (context) => [
              const EmailRoute(),
              if (state.isValidEmail) const PasswordRoute(),
            ],
          );
        },
      ),
    );
  }
}
