import 'package:flutter/material.dart';
import 'Screen/messageScreen.dart';
import 'Widgets/bottomNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarOpacity: 0,
          toolbarHeight: 100.0,
          title: [
            titleMessage,
            Text("Profil"),
          ][_currentIndex],
        ),
        body: SingleChildScrollView(
          child: [
            message(),
            Text("Profil"),
          ][_currentIndex],
        ),
        bottomNavigationBar: bottomNavigation(_currentIndex, setCurrentIndex),
      )
    );
  }
}
