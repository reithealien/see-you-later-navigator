import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seeyoulaternavigator/presentation/common/extensions/email_extension.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(const AuthenticationState.initial());

  void emailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(password: password));
  }

  void checkEmail() {
    emit(state.copyWith(isValidEmail: state.email.trim().isValidEmail()));
  }

  void backToEmail() {
    emit(state.copyWith(isValidEmail: false));
  }

  void loginWithCredentials() {
    if (state.email.trim() == 'test@me.com' && state.password.trim() == '123456') {
      emit(state.copyWith(status: AuthenticationStatus.authenticated));
    } else {
      emit(state.copyWith(status: AuthenticationStatus.unauthenticated));
    }
  }
}
