import 'package:chaintel/pages/LoginPage.dart';
import 'package:chaintel/pages/homePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(),);
          } else if (snapshot.hasData) {
            return MyHomePage();
          } else if (snapshot.hasError) {
            return Center(child: Text("Something Went wrong!"),);
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}