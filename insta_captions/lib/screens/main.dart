import 'package:flutter/material.dart';
import 'package:insta_captions/widgets/app_drawer.dart';
import 'package:insta_captions/widgets/home_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData myTheme = ThemeData(
    primaryColor: Color.fromRGBO(23, 32, 42, 1),
    accentColor: Color.fromRGBO(205, 97, 85, 1),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaCaptions',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: Home(),
      routes: {

      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(
        "InstaCaptions",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
    // TODO: implement build
    return Scaffold(
      appBar: appBar,
      drawer: AppDrawer(appBar),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          HomeCard(
              cardText: "Open Camera",
              imagePath: "android/assets/images/camera.png",
              goToRoute: null),
          HomeCard(
              cardText: "Select a Photo",
              imagePath: "android/assets/images/files.png",
              goToRoute: null),
        ],
      ),
    );
  }
}
