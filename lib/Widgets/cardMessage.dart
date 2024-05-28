import 'package:flutter/material.dart';
import 'package:learn/Constants/colors.dart';
import 'package:learn/Constants/numbers.dart';
import 'package:learn/Screen/messageScreen.dart';

class CardMessage extends StatelessWidget {
  const CardMessage({super.key, required this.message, required this.user});
  final String message;
  final bool user;

  @override
  Widget build(BuildContext context) {
    Radius mainRadius = Radius.circular(NumbersConstant.borderRadiusMain);
    Radius secondaryRadius =
        Radius.circular(NumbersConstant.borderRadiusSecondary);
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: user ?MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: size.width * 0.75),
          padding: EdgeInsets.all(NumbersConstant.padding),
          margin: EdgeInsets.all(NumbersConstant.margin),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: user ? secondaryRadius : mainRadius,
                topRight: user ? mainRadius : secondaryRadius,
                bottomLeft: user ? secondaryRadius : Radius.zero,
                bottomRight: user ? Radius.zero : secondaryRadius),
            color: user ? ColorsConstant.blackBlue : ColorsConstant.lightBlue,
          ),
          child: Text(
            message,
            style: TextStyle(
              fontSize: NumbersConstant.fontSizeMessage,
              color: user ? ColorsConstant.lightBlue : ColorsConstant.black,
            ),
          ),
        ),
      ],
    );
  }
}
