import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/widgets/button.global.dart';
import 'package:flutter_application_1/screen/widgets/social.login.dart';
import 'package:flutter_application_1/screen/widgets/text.form.global.dart';
import 'package:flutter_application_1/utils/global.color.dart';
import 'package:flutter_application_1/screen/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  'assets/images/logo.png',
                  width: 100, // Sesuaikan lebar sesuai kebutuhan
                  height: 100, // Sesuaikan tinggi sesuai kebutuhan
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 50),
                Text(
                  'Create a new account',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  textInputType: TextInputType.text,
                  obscure: false,
                ),
                const SizedBox(height: 10),
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 10),
                TextFormGlobal(
                  controller: confirmPasswordController,
                  text: 'Confirm Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 10),
                ButtonGlobal(
                  text: 'Sign Up',
                  onTap: () {
                    // Handle register action
                    print('Sign Up');
                  },
                ),
                const SizedBox(height: 25),
                SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already have an account? "),
            InkWell(
              onTap: () {
                // Navigasi ke halaman login
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: GlobalColors.mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
