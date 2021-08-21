import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override 
  _HomePage createState() => _HomePage();
}

appBarHome() {
  return  PreferredSize(
    preferredSize: Size.fromHeight(5.0),
    child: AppBar(
    backgroundColor: Color(0xFF2BD3C0),
  ));
}

 
class _HomePage extends State<HomePage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      body: Container(
        //decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF2BD3C0),Color(0xFF983590)],begin: Alignment.bottomCenter,end: Alignment.topCenter), ),
        child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,//MediaQuery.of(context).size.height,
                    left: 0,//MediaQuery.of(context).size.width,
                    right: 0,
                    bottom: 70,
                    child: Container(
                        color: Color(0xFF2BD3C0),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child:  ClipRRect(
                        child: Image.asset('assets/images/logo.png'),
                        borderRadius: BorderRadius.circular(50.0),
                    ),
                    ),
                    )
                ],
              ),
              //Center(child:Image.asset('assets/images/logo.png', width: 250,height: 250,))
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.7,
              width: MediaQuery.of(context).size.width,
              //color: Colors.black,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(width: 20.0, height: 100.0),
                  const Text(
                    'Be',
                    style: TextStyle(fontSize: 43.0),
                  ),
                  const SizedBox(width: 20.0, height: 100.0),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 40.0,
                      color: Colors.red,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('AWESOME'),
                        RotateAnimatedText('OPTIMISTIC'),
                        RotateAnimatedText('DIFFERENT'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ],
              )
            ),
          ],
        )),
      ),
    );
  }
}