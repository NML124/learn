import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn/Constants/colors.dart';
import '../Constants/strings.dart';
import '../Constants/textStyle.dart';
import '../Constants/numbers.dart';

class message extends StatefulWidget {
  const message({super.key});

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  final List messages = [
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 0,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 0,
      'date': '07:31'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titleMessage,
      ),
      body: messageArea(messages),
    );
  }
}

Widget titleMessage = Container(
  color: Colors.green,
  child: const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        StringConstant.titleMessageScreen,
        style: AppTextStyles.titleText,
      ),
      IconButton(
        onPressed: null,
        icon: FaIcon(
          FontAwesomeIcons.magnifyingGlass,
          color: ColorsConstant.darkBlue
        ),
      )
    ],
  ),
);

Widget messageArea(List messages) {
  return SingleChildScrollView(
    child: Column(
      children: messages.map((message) {
        return InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.all(NumbersConstant.margin),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 62,
                  height: 62,
                  decoration: BoxDecoration(
                      color: ColorsConstant.blackBlue,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(message['senderProfile']),
                      )
                  ),
                ),
                Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  message['senderName'],
                                  style: AppTextStyles.subtitleText,
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      message['message'],
                                      style: AppTextStyles.bodyText,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  message['date'],
                                  style: AppTextStyles.bodyText,
                                ),
                                message['unRead'] != 0
                                    ? Container(
                                  padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                                  decoration: BoxDecoration(
                                    color: ColorsConstant.blackBlue,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                  ),
                                  child: Text(
                                    message['unRead'].toString(),
                                    style: AppTextStyles.bodyText,
                                  ),
                                )
                                    : Container()
                              ],
                            )
                          ],
                        )
                      ],
                    )
                )
              ],
            ),
          ),
        );
      }).toList(), // Ajoutez .toList() ici pour convertir le résultat en List<Widget>
    ),
  );
}
