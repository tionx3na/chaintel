import 'package:chaintel/utilities/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chaintel/utilities/directlogin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbapp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Raleway'
        ),
        home: FutureBuilder(
          future: _fbapp,
          builder: (context, snapshot) {
            if(snapshot.hasError) {
              print('You Have an error! ${snapshot.error.toString()}');
              return Text('Something Went Wrong!');
            } else if (snapshot.hasData) {
              return AnimatedSplashScreen(splash: 'assets/images/logo2.gif',
                      pageTransitionType: PageTransitionType.bottomToTop,
                      duration: 3000,
                        nextScreen: Login(),
                      ); 
            }
            else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )
        // AnimatedSplashScreen(splash: 'assets/images/logo2.gif',
        //   pageTransitionType: PageTransitionType.bottomToTop,
        //   duration: 3000,
        //   nextScreen: MyHomePage(),
        // ) 
      )
    );
  }
}

