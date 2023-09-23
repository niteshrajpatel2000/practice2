import 'package:flutter/material.dart';
import 'package:practice_2/auth/google/services.dart';

class GoogleLogin extends StatefulWidget {
  const GoogleLogin({super.key});

  @override
  State<GoogleLogin> createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  @override
  Widget build(BuildContext context) {
    GoogleService authService = GoogleService();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed:authService.handleSignIn
            , child: const Text('Sign in with Google'),)
          ],
        ),
      ),
    );
  }
}

