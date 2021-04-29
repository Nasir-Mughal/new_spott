import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body:  NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 270,
                collapsedHeight: 100,
                stretch: true,
                floating: false,
                pinned: false,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  background: SizedBox(
                    child: Image.asset("Assets/images/thumbnail.jpg", fit: BoxFit.cover,)
                  ),

                  centerTitle: true,
                  stretchModes: [
                    StretchMode.zoomBackground,
                    StretchMode.blurBackground,
                    StretchMode.fadeTitle,
                  ],
                ),
              )
            ];
          },
          body:Flexible(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )
              ),
              child: Stack(
                children: [

                  Positioned(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Container(
                              padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),

                              child: Column(
                                children: [
                                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 55, height: 55,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Column( crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Chris Martin", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                                            Container(
                                              child: Text("martin_", overflow: TextOverflow.ellipsis,
                                                maxLines:1,style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 50, height: 50,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                                                fit: BoxFit.cover)),),
                                    ],
                                  ),
                                  Divider(height: 30,thickness: 1,),
                                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Text("Follower", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                          Text("2000", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text("Spotted", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                          Text("2000", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text("Following", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                          Text("2000", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Divider(height: 30,thickness: 1,),
                                  Container(
                                    child:Column( crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("About", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                        Text(" I am a UI/UX designer for Website & Mobile who likes to create powerful, pixel perfect designs that "
                                            "augment a product's appeal. I specialize in creating dynamic yet "
                                            "seamless user interfaces that have high conversion rates and end user satisfaction"
                                          "I can design you a unique UI for your mobile app for any resolution as per your demand & Specification. ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                  ),
                                  Divider(height: 30,thickness: 1,),
                                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                     Icon(Icons.local_fire_department_outlined, size: 40,),
                                     Icon(Icons.add_box, size: 40,),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],

                      ),
                    ),
                  ),

                ],



              ),
            ),
          )

      ),
    );
  }
}
