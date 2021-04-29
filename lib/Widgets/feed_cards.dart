import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FeedCards extends StatefulWidget {
  @override
  _FeedCardsState createState() => _FeedCardsState();
}

class _FeedCardsState extends State<FeedCards> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50, height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Smc Tenement", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                      Container(
                        child: Text("Ward No.7, Vasta Devdi Rd, Gotalawadi, Tunki, Katargam, Surat…", overflow: TextOverflow.ellipsis,
                          maxLines:1,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30,
                    child: Icon(Icons.more_vert, size: 30,)),
              ],
            ),
          ),
          Container(
              height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("Assets/images/thumbnail.jpg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10,bottom: 10,right: 10),
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: Text("I'm trying to upgrade to new superman come (netcoreapp2.0), but I can't see that.",
                style: TextStyle(fontSize: 17),),),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.55,
                      child: Row(
                        children: [
                          ClipOval(
                            child: Container(
                              width: 50, height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container( width: MediaQuery.of(context).size.width*0.4,
                            child: Text("Crutis Poole", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                          ),


                        ],

                      ),
                    ),
                    Text("8 mins", style: TextStyle(fontSize: 15,),),
                  ],
                ),
                Divider(height: 30,thickness: 1),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container( width: 70,
                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.remove_red_eye, size: 30,color: Colors.green,),
                            Text("90"),
                          ],
                        )),

                    Container( width: 140,
                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.arrow_drop_up, size: 50,color: Colors.green,),
                            Text("40"),
                            Icon(Icons.arrow_drop_down, size: 50,color: Colors.red,),
                            Text("20"),
                          ],
                        )),

                    Container( width: 70,
                        child:
                        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.comment_bank, size: 30,color: Colors.green,),
                            Text("10"),
                          ],
                        )),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }}
