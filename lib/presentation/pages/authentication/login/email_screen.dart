part of 'login_wrapper_screen.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

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
                  onChanged: (value) => context.read<AuthenticationCubit>().emailChanged(value),
                  keyboardType: TextInputType.emailAddress,
                  validator: validateEmail,
                  cursorColor: Colors.black,
                  decoration: buildInputDecoration(label: 'Email', hint: 'Enter your email'),
                ),
                TextButton(
                  onPressed: () {
                    if (loginFormKey.currentState!.validate()) {
                      context.read<AuthenticationCubit>().checkEmail();
                    }
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty || !value.isValidEmail()) {
      return 'Please enter a valid email';
    } else {
      return null;
    }
  }
}
