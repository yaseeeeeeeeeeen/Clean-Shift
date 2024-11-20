import 'package:clean_shift/helper/auth_helper.dart';
import 'package:clean_shift/screens/auth/otp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://via.placeholder.com/150', // Replace with a random logo/image URL
              height: 150,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () async {
                User? user = await AuthHelper.signInWithGoogle();
                if (user != null) {
                  Navigator.pushReplacementNamed(context, '/home');
                }
              },
              icon: const Icon(Icons.account_circle),
              label: const Text('Sign in with Google'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => OtpScreen()));
              },
              icon: Icon(Icons.phone),
              label: Text('Sign in with Phone'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
