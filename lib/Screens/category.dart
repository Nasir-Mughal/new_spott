import 'package:flutter/material.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
        title: Text("Categories", style: TextStyle(color: Colors.black),), centerTitle: true,
        actions: [
          Icon(Icons.send, size: 30, color: Colors.black,)
        ],
      ),
      body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                      children: [
                        Container(
                          height:90,
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Bar", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                              Icon(Icons.check_circle, size: 40, color: Colors.grey,),
                            ],
                          ),
                        ),
                        Divider(thickness: 1,),
                        Container(
                          height:90,
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("PUB", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                              Icon(Icons.check_circle, size: 40, color: Colors.grey,),
                            ],
                          ),
                        ),
                        Divider(thickness: 1,),
                        Container(
                          height:90,
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Resturant", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                              Icon(Icons.check_circle, size: 40, color: Colors.grey,),
                            ],
                          ),
                        ),
                        Divider(thickness: 1,),
                        Container(
                          height:90,
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Public Area", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                              Icon(Icons.check_circle, size: 40, color: Colors.green,),
                            ],
                          ),
                        ),
                        Divider(thickness: 1,),
                      ],
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
