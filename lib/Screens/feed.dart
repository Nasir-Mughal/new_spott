import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Mughal-e-Azam/AndroidStudioProjects/new_spott/lib/Widgets/stories.dart';
import 'package:new_spott/Widgets/feed_cards.dart';
class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height*2,
          width: MediaQuery.of(context).size.width*2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),

                Container(
                  height: 200,
                  child: ListView.builder
                    (
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext ctxt, int index) {
                        if(index==0){
                          return Container(
                            width: 150,
                            child: Column(
                              children: [
                                SizedBox(
                                  width:150,
                                  height: 100,
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: 50, height: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white),
                                            shape: BoxShape.circle,
                                              image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                      Positioned(
                                        top: 20, bottom: 0,
                                        child: Container( width: 150,
                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                width: 20, height: 20,
                                                color: Colors.green,
                                              ),
                                              Icon(Icons.add_circle, color: Colors.green, size: 30,),
                                            ],
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                                Text("Add", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),),
                                Text("Your Story", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.black),),

                              ],
                            ),
                          );
                        }else{
                       return Stories();
                        }

                      }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return Column(
                          children: [
                            FeedCards(),
                            SizedBox(height: 20,)
                          ],
                        );
                      }
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
