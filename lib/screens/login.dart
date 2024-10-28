import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:uangku/screens/home.dart';
import 'package:uangku/screens/landing.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    final username = _usernameController.text;
    final password = _passwordController.text;

    // Perform login logic here (e.g., API call)

    // For demonstration, just print the username and password
    print('Username: $username, Password: $password');

    // Optionally, show a success message or navigate to another screen
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Logging in with $username')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/money.png',
            height: 220,
          ),
          const SizedBox(
            height: 100,
          ),
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: 300,
            child: ElevatedButton(
              onPressed: () => {Get.to(const Home())},
              child: const Text(
                'Login',
              ),
            ),
          )
        ],
      ),
    );
  }
}
