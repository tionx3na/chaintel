import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:chaintel/utilities/google_sign_in.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,//Color(0xFF0F8084),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/1.6,
            margin: EdgeInsets.all(30),
            child: Center(
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                child: ClipRRect(
                          child: Image.asset('assets/images/logo.png'),
                          borderRadius: BorderRadius.circular(50.0),
                      ),
              ),
            ),
          ), 
          Container(
           child: SignInButton(
              Buttons.Google,
              text: "Sign-up with Google",
              onPressed: () {
                final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
              },
            )
          ), 
           Container(
           child: SignInButton(
              Buttons.Facebook,
              text: "Sign-up with Google",
              onPressed: () {},
            )
          ), 
        ],
      )
    );
  }
}