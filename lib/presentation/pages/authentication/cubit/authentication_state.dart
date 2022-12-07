part of 'authentication_cubit.dart';

enum AuthenticationStatus { authenticated, unauthenticated }

class AuthenticationState {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unauthenticated,
    this.email = '',
    this.password = '',
    this.isValidEmail = false,
  });

  const AuthenticationState.initial() : this._();

  final AuthenticationStatus status;
  final String email;
  final String password;
  final bool isValidEmail;

  AuthenticationState copyWith({
    AuthenticationStatus? status,
    String? email,
    String? password,
    bool? isValidEmail,
  }) {
    return AuthenticationState._(
      status: status ?? this.status,
      email: email ?? this.email,
      password: password ?? this.password,
      isValidEmail: isValidEmail ?? this.isValidEmail,
    );
  }

  List<Object?> get props => [email, password];
}
