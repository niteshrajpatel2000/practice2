import 'package:flutter/material.dart';
import 'package:practice_2/auth/google/services.dart';

class GoogleHomePage extends StatefulWidget {
  const GoogleHomePage({super.key});

  @override
  State<GoogleHomePage> createState() => _GoogleHomePageState();
}

class _GoogleHomePageState extends State<GoogleHomePage> {
  @override
  Widget build(BuildContext context) {
    GoogleService authservice = GoogleService();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Google Home Page'),
        actions: [
          IconButton(
              onPressed: authservice.handleSignOut,
              icon: const Icon(Icons.logout))
        ],
      ),
      body: ListView(
        children: const [Text('Nitesh')],
      ),
    );
  }
}
