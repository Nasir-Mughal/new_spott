import 'package:flutter/material.dart';
Widget showAlertDialog(BuildContext context,) {
  AlertDialog alert = AlertDialog(
    // backgroundColor: Colors.deepOrange,
    content: Image.asset("Assets/images/profile.jpg", fit: BoxFit.cover),

  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
