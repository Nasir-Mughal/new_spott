import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_spott/Screens/feed.dart';
import 'package:new_spott/Widgets/feed_cards.dart';
import 'package:new_spott/Widgets/stories.dart';

class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'msc',
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back,  color: Colors.black),
            title: Text("Feed",style: TextStyle( color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),), centerTitle: true,
            actions: [
              Icon(Icons.notifications, color: Colors.black),
            ],
            bottom: new PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: new Container(
                color: Colors.white,
                height: 70,
                child: new SafeArea(
                  child: Column( mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Divider(thickness: 1, height: 10,),
                      SizedBox(height: 10),
                      // new Expanded(child: new Container())
                      new TabBar( labelColor: Colors.green,
                        labelPadding: EdgeInsets.only(bottom: 23),
                        unselectedLabelColor: Colors.grey,
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(width: 5.0, color: Colors.green)),

                        tabs: [new Text("Lunches", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),
                          new Text("Cart",style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
                          new Text("good",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              new Column(
                children: <Widget>[ Stories()],
              ),
              SingleChildScrollView(
                child: new Column(
                  children: <Widget>[ Container(),],
                ),
              ),
              SingleChildScrollView(
                child: new Column(
                  children: <Widget>[FeedCards()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
