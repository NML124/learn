import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Constants/numbers.dart';
import '../Constants/textStyle.dart';

Widget cardMessages(List messages) {
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
                      color: ColorsConstant.gray,
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
                                      style: AppTextStyles.bodyText(ColorsConstant.darkBlue),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  message['date'],
                                  style: AppTextStyles.bodyText(ColorsConstant.darkBlue),
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
                                    style: AppTextStyles.bodyText(ColorsConstant.lightBlue),
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