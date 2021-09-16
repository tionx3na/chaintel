import 'package:flutter/material.dart';

class NewsHomePage extends StatelessWidget {
  @override 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/news.jpg"),
                                  fit: BoxFit.cover,
                                
                                )),
                child: Text("data"),
              )
            ],
          ),
          Column(
            children: [
              Text("data")
            ],
          )
        ],
      ),
    );
  }
}