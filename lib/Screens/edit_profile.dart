import 'package:flutter/material.dart';
import 'package:new_spott/Widgets/show_alert.dart';
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        title: Text("Edit Profile", style: TextStyle( color: Colors.black),), centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        showAlertDialog(context);
                      },

                      child: Container(
                        width: 50, height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("Assets/images/profile.jpg"),
                                fit: BoxFit.cover),

                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Flexible(
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.85,
                        // height: MediaQuery.of(context).size.height*0.09,
                        padding: EdgeInsets.all(10),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Name",
                                border: InputBorder.none
                            ),),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 30,),

                Container(
                  width: MediaQuery.of(context).size.width*1,
                  height: MediaQuery.of(context).size.height*0.3,
                  padding: EdgeInsets.all(10),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "About",
                          border: InputBorder.none
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),

                Container(
                  width: MediaQuery.of(context).size.width*1,
                  height: MediaQuery.of(context).size.height*0.08,
                  padding: EdgeInsets.all(10),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Save", style: TextStyle(color: Colors.white),),
                    ]

                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ),
    );
  }
}
