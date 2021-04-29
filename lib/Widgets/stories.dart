import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 170,
                child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10,),
                        border: Border.all(width:4,color: Colors.green),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height:135,
                            width: 140,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("Assets/images/thumbnail.jpg",),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10,),
                              border: Border.all(width:2,color: Colors.white),
                            ),
                            child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50, height: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                                          fit: BoxFit.cover),
                                      border: Border.all(color: Colors.white, width: 2)
                                  ),
                                ),
                                Text("Chris Martin", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20,height: 20,
                          color: Colors.grey,
                        ),
                        Container( width: 120,
                            child: Text("Crystal Barithm", overflow: TextOverflow.ellipsis, maxLines: 2, style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),))
                      ],
                    ),

                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
