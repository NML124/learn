import 'package:flutter/material.dart';
import 'package:learn/Constants/strings.dart';
import 'package:learn/providers/messages.dart';
import 'package:provider/provider.dart';
import 'Screen/messageScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Messages(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: messagesScreen(),
        ),
      ),
    );
  }
}
