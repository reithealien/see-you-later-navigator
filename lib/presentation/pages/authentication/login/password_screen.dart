part of 'login_wrapper_screen.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                    textInputAction: TextInputAction.done,
                    onChanged: (value) => context.read<AuthenticationCubit>().passwordChanged(value),
                    validator: (value) => value?.isEmpty ?? true ? 'Please enter a password' : null,
                    cursorColor: Colors.black,
                    obscureText: true,
                    decoration: buildInputDecoration(label: 'Password', hint: 'Enter your password')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => context.read<AuthenticationCubit>().backToEmail(),
                      child: const Text('Back', style: TextStyle(color: Colors.black)),
                    ),
                    TextButton(
                      onPressed: () {
                        if (loginFormKey.currentState!.validate()) {
                          context.read<AuthenticationCubit>().loginWithCredentials();
                        }
                      },
                      child: const Text('Login', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
