import 'package:chaintel/pages/homeUser.dart';
import 'package:flutter/material.dart';
import 'package:chaintel/pages/profilePage.dart';
import 'package:chaintel/pages/homeUser.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyHomePage extends StatefulWidget {
   const MyHomePage({ Key? key }) : super(key: key);
  @override 
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int currentPage = 2;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 2,
          height: 60.0,
          items: <Widget>[
           FaIcon(FontAwesomeIcons.gamepad, color: currentPage == 0 ? Colors.white : Colors.black,),
           FaIcon(FontAwesomeIcons.user, color: currentPage == 1 ? Colors.white : Colors.black,),
           FaIcon(FontAwesomeIcons.home, color: currentPage == 2 ? Colors.white : Colors.black,),
           FaIcon(FontAwesomeIcons.gamepad, color: currentPage == 3 ? Colors.white : Colors.black,),
           FaIcon(FontAwesomeIcons.gamepad,color: currentPage == 4 ? Colors.white : Colors.black,),
          ],
          color: Color(0xFF2BD3C0),
          buttonBackgroundColor: Color(0xFF2BD3C0),
          backgroundColor:  Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              currentPage = index;
              print(currentPage);
            });
          },
          letIndexChange: (index) => true,
        ),



      drawer: Drawer(
        child: ListView(
          children: <Widget>[Text("Hello"), Text("World")],
        ),
      ),
    );
  }
  
  _getPage(int page) {
    switch (page) {
      case 0:
        return ProfilePage();
      case 1:
        return HomePage();
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the basket page"),
            ElevatedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            )
          ],
        );
    }
  }
}

