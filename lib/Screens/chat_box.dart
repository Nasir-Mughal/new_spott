import 'package:flutter/material.dart';
class ChatBox extends StatefulWidget {
  @override
  _ChatBoxState createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap:(){Navigator.pop(context);},
          child: Icon(Icons.arrow_back, size: 30, color: Colors.black,
          ),
        ),
        title: Text("Username", style: TextStyle(color: Colors.black),), centerTitle: true,
        actions: [
          Icon(Icons.more_vert, size: 30, color: Colors.black,)
        ],
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 40, height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                                      fit: BoxFit.cover),
                                  border: Border.all(color: Colors.white, width: 2)
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 50,
                                width: 180,
                                padding: EdgeInsets.all(5),
                                decoration:  BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.white,// set border color
                                        width: 3.0),   // set border width
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)), // set rounded corner radius
                                    boxShadow: [BoxShadow(color: Colors.white,offset: Offset(1,3))]// make rounded corner of border
                                ),
                                child: Center(child: Text("Hey AnyOne Hare? ", textAlign: TextAlign.center,style: TextStyle(fontSize: 16),)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row( mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 50,
                                width: 180,
                                padding: EdgeInsets.all(5),
                                decoration:  BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                        color: Colors.grey,// set border color
                                        width: 3.0),   // set border width
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)), // set rounded corner radius
                                    boxShadow: [BoxShadow(color: Colors.white,offset: Offset(1,3))]// make rounded corner of border
                                ),
                                child: Center(child: Text("yes! I am fine wbu ?", style: TextStyle(fontSize: 16),)),
                              ),
                            ),
                            Container(
                              width: 40, height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                                      fit: BoxFit.cover),
                                  border: Border.all(color: Colors.white, width: 2)
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row( mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 40, height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                                      fit: BoxFit.cover),
                                  border: Border.all(color: Colors.white, width: 2)
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 50,
                                width: 180,
                                padding: EdgeInsets.all(5),
                                decoration:  BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color:Colors.white,// set border color
                                        width: 3.0),   // set border width
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)), // set rounded corner radius
                                    boxShadow: [BoxShadow(color: Colors.white,offset: Offset(1,3))]// make rounded corner of border
                                ),
                                child: Center(child: Text("Hey AnyOne Hare? ", textAlign: TextAlign.center,style: TextStyle( fontSize: 16),)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row( mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 50,
                                width: 180,
                                padding: EdgeInsets.all(5),
                                decoration:  BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                        color: Colors.grey,// set border color
                                        width: 3.0),   // set border width
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)), // set rounded corner radius
                                    boxShadow: [BoxShadow(color: Colors.white,offset: Offset(1,3))]// make rounded corner of border
                                ),
                                child: Center(child: Text("yes! I am fine wbu ?", style: TextStyle(fontSize: 16),)),
                              ),
                            ),
                            Container(
                              width: 40, height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                                      fit: BoxFit.cover),
                                  border: Border.all(color: Colors.white, width: 2)
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.image_search_outlined, size: 30,),
                    Flexible(
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.85,
                        height: MediaQuery.of(context).size.height*0.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,// set border color
                              width: 0.5),   // set border width
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Type a Massage",
                            hintStyle: TextStyle(color: Colors.grey , fontWeight: FontWeight.w400 ),
                            border: InputBorder.none

                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.send, size: 30,),
                  ],
                ),
              ),
              SizedBox(height: 10,)
            ],
          )
      ),

    );
  }
}
