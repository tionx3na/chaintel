import 'package:flutter/material.dart';
import 'package:chaintel/widgets/top_coins/card.dart';
import 'package:chaintel/widgets/trending_coins/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePage createState() => _HomePage();
}

appBarHome() {
  return PreferredSize(
      preferredSize: Size.fromHeight(5.0),
      child: AppBar(
        backgroundColor: Color(0xFF2BD3C0),
      ));
}

class _HomePage extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      body: Container(
          //decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF2BD3C0),Color(0xFF983590)],begin: Alignment.bottomCenter,end: Alignment.topCenter), ),
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.14,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: 0, //MediaQuery.of(context).size.height,
                  left: 0, //MediaQuery.of(context).size.width,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFF2BD3C0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/app_bar.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.1), BlendMode.dstATop),
                        )),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            //color: Color(0xFFC3FCF2),
                            width: 500,
                            margin: EdgeInsets.only(top: 10, bottom: 0),
                            height: 60,
                            decoration: BoxDecoration(
                                color: Color(0xFF2BD3C0),
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/app_bar.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.2),
                                      BlendMode.dstATop),
                                )),
                          ),

                          SizedBox(
                            height: 10.0,
                          ),

                          //Top Coins
                          Container(
                            margin: EdgeInsets.only(top: 25),
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text("Top Coins",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                    InkWell(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 10.0),
                                        child: Text(
                                          "See All",
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 20),
                                        ),
                                      ),
                                      onTap: () {
                                        print("tapped");
                                      },
                                    ),
                                  ],
                                ),
                                // Top Coins Card Container
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 5.4,
                                  margin: EdgeInsets.all(10.0),
                                  color: Colors.white,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      for (var i = 0; i < 11; i++)
                                        Container(
                                          width: 150,
                                          child: CardTopCoin(),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 5.0,
                          ),

                          // Trending
                          Container(
                            margin: EdgeInsets.only(top: 25),
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width,
                            // color: Colors.black,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text("Trending",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                    InkWell(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 10.0),
                                        child: Text(
                                          "See All",
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 20),
                                        ),
                                      ),
                                      onTap: () {
                                        print("tapped");
                                      },
                                    ),
                                  ],
                                ),
                                // Trendinig Coins Card
                                Container(
                                  height:MediaQuery.of(context).size.height / 5.4,
                                  margin: EdgeInsets.all(10.0),
                                  color: Colors.white,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      for (var i = 0; i < 11; i++)
                                        Container(
                                          width: 150,
                                          child: CardTrendingCoin(),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 590,
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 100,
                          width: 100,
                        ),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
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
