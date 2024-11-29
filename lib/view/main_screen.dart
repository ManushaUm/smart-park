import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  void signUserOut() {
    //sign out user
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //display as logged in
      appBar: AppBar(
        title: Text("Main Screen"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: signUserOut,
          ),
        ],
      ),
      body: Center(
        child: Text("Welcome to the main screen"),
      ),
    );
  }
}
