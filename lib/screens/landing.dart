import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:uangku/screens/login.dart';
import 'package:get/get.dart';
import 'package:uangku/screens/register.dart'; // Importing Get package

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/money.png',
                height: 220,
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Hai, Selamat Datang',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Silahkan akses aplikasi ini',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        onPressed: () => {Get.to(() => (const Login()))},
                        child: const Text('LOGIN')),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        onPressed: () => {Get.to(() => (const Register()))},
                        child: const Text('REGISTER')),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
