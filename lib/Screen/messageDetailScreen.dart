import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn/Constants/colors.dart';
import 'package:learn/Constants/numbers.dart';
import 'package:learn/Widgets/cardMessage.dart';

class MessageDetailScreen extends StatefulWidget {
  const MessageDetailScreen({super.key, required this.nameUser});
  final String nameUser;

  @override
  State<MessageDetailScreen> createState() => _MessageDetailScreenState();
}

class _MessageDetailScreenState extends State<MessageDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(NumbersConstant.borderRadiusMain),
        borderSide: BorderSide.none);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.nameUser,
          style: TextStyle(
              color: ColorsConstant.black,
              fontSize: NumbersConstant.fontSizeTitle),
        ),
        backgroundColor: ColorsConstant.lightBlue,
        actions: [
          Container(
            margin: EdgeInsets.only(right: NumbersConstant.margin),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.info_outline_rounded,
                  color: ColorsConstant.darkBlue,
                  size: NumbersConstant.sizeButton,
                )),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: ColorsConstant.lightBlue,
        ),
        child: Container(
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(NumbersConstant.borderRadiusScreen),
            ),
            color: ColorsConstant.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (ctx, index) {
                    return CardMessage(
                        message:
                            "Test bête la vache de ma mere est gay uret je suis pas comme toi",
                        user: index % 2 == 0);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(NumbersConstant.paddingEditText),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic_none_outlined,
                        size: NumbersConstant.sizeButton,
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        color: ColorsConstant.lightBlue,
                        borderRadius: BorderRadius.circular(
                            NumbersConstant.borderRadiusMain),
                      ),
                      child: TextField(
                        cursorColor: ColorsConstant.blackBlue,
                        autocorrect: false,
                        style: TextStyle(
                            fontSize: NumbersConstant.fontSizeMessage),
                        decoration: InputDecoration(
                          enabledBorder: outlineInputBorder,
                          focusedBorder: outlineInputBorder,
                        ),
                      ),
                    )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send_outlined,
                          size: NumbersConstant.sizeButton,
                          color: ColorsConstant.blackBlue,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}