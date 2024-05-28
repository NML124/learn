import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn/Constants/colors.dart';

class MessageDetailScreen extends StatefulWidget {
  const MessageDetailScreen({super.key, required this.nameUser});
  final String nameUser;

  @override
  State<MessageDetailScreen> createState() => _MessageDetailScreenState();
}

class _MessageDetailScreenState extends State<MessageDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nameUser),
        backgroundColor: ColorsConstant.lightBlue,
        actions: [
          GestureDetector(
              onTap: () {}, child: Icon(Icons.info_outline_rounded)),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: ColorsConstant.lightBlue,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            color: ColorsConstant.white,
          ),
        ),
      ),
    );
  }
}