import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            Center(child:Image.asset('assets/images/logo.png', width: 250,height: 250,))
          ],
        ),
      ),
    );
  }
}