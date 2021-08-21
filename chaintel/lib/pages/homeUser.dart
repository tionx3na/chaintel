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
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/1.16,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,//MediaQuery.of(context).size.height,
                    left: 0,//MediaQuery.of(context).size.width,
                    right: 0,
                    bottom: 550,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF2BD3C0),
                          image: DecorationImage(
                              image: AssetImage("assets/images/app_bar.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop),
                              )
                        ),
                    ),
                  ),

                  Positioned(
                        top: 120,
                        left: 0,
                        right: 0,
                        bottom: 0,
                      child: Container(
                        //color: Colors.black,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 85, bottom: 0),
                                height: 50,
                                child: Text("WELCOME", style: TextStyle(color: Color(0xFF2BD3C0), fontSize: 40.0,  fontWeight: FontWeight.w800,),) //Row(
                                //     mainAxisSize: MainAxisSize.min,
                                //     children: <Widget>[
                                //       const SizedBox(width: 20.0, height: 100.0),
                                //       DefaultTextStyle(
                                //         style: const TextStyle(
                                //           fontSize: 40.0,
                                //           fontWeight: FontWeight.w800,
                                //           color: Color(0xFF00BED7),
                                //           fontFamily: 'Horizon',
                                //         ),
                                //         child: AnimatedTextKit(
                                //           repeatForever: true,
                                //           isRepeatingAnimation: true,
                                //           animatedTexts: [
                                //             RotateAnimatedText('WELCOME'),
                                //             RotateAnimatedText('TO'),
                                //             RotateAnimatedText('CHAINTEL'),
                                //           ],
                                //           onTap: () {
                                //             print("Tap Event");
                                //           },
                                //         ),
                                //       ),
                                //     ],
                                //   )
                              ),
                              Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                margin: EdgeInsets.all(30.0),
                                color: Color(0xFF00BED7),
                                child: Container(
                                  height: 170,
                                  width: 500,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/first_card.jpg"),
                                      fit: BoxFit.cover,
                                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
                                    )
                                  ),
                                  //child: Image.asset('assets/images/first_card.jpg'),
                                  
                                ),
                              ),
                              Card(
                                margin: EdgeInsets.all(20.0),
                                color: Color(0xFF00A5E5),
                                child: Container(
                                  height: 170,
                                  width: 500,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/first_card.jpg"),
                                      fit: BoxFit.cover,
                                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                                    )
                                  ),
                                ),
                              ),
                              Card(
                                margin: EdgeInsets.all(20.0),
                                color: Color(0xFF0087E0),
                                child: Container(
                                  height: 170,
                                  width: 500,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/first_card.jpg"),
                                      fit: BoxFit.cover,
                                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
                                    )
                                  ),
                                ),
                              ),
                               Card(
                                margin: EdgeInsets.all(20.0),
                                color: Color(0xFF7063C3),
                                child: Container(
                                  height: 170,
                                  width: 500,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/first_card.jpg"),
                                      fit: BoxFit.cover,
                                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                                    )
                                  ),
                                ),
                              ),
                                Card(
                                margin: EdgeInsets.all(20.0),
                                color: Color(0xFF983590),
                                child: Container(
                                  height: 170,
                                  width: 500,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/first_card.jpg"),
                                      fit: BoxFit.cover,
                                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                                    )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),

                    Positioned(
                      top: 0,
                      left: 100,
                      right: 100,
                      bottom: 450,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child:  ClipRRect(
                          child: Image.asset('assets/images/logo.png'),
                          borderRadius: BorderRadius.circular(50.0),
                      ),
                      ),
                      ),
                  ],
                ),
                      //Center(child:Image.asset('assets/images/logo.png', width: 250,height: 250,))
            ),
            
          ],
        )),
    );
  }
}