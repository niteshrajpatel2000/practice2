import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'googleloging.dart';
import 'homepage.dart';

class GoogleAuthPage extends StatefulWidget {
  const GoogleAuthPage({super.key});

  @override
  State<GoogleAuthPage> createState() => _GoogleAuthPageState();
}

class _GoogleAuthPageState extends State<GoogleAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream:FirebaseAuth.instance.authStateChanges(),
        builder: ( context, AsyncSnapshot<User?> snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            );
          }
        if(snapshot.hasData){
          return const GoogleHomePage ();
        }else{
          return const GoogleLogin ();
        }
        },
          ),
    );
  }
}
