import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_spott/Screens/category.dart';
import 'package:new_spott/Screens/chat_box.dart';
import 'package:new_spott/Screens/feed.dart';
import 'package:new_spott/Widgets/feed_cards.dart';
import 'package:new_spott/Widgets/stories.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          MyApp(), // Wrap your app
    ), // Wrap your app
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: Categories(),
    );
  }
}

