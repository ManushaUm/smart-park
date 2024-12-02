import 'package:firebase_core/firebase_core.dart';
import 'package:firstt_app/model/category.dart';
import 'package:firstt_app/view/LoginScreen.dart';
import 'package:firstt_app/view/main_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

//upload data to firebase
class UploadDataToFireBase extends StatelessWidget {
  const UploadDataToFireBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            saveCategoryItems();
          },
          child: const Text("Upload data to firebase"),
        ),
      ),
    );
  }
}
