import 'package:flutter/material.dart';
import 'package:learn/models/message.dart';

import '../Constants/colors.dart';
import '../Constants/numbers.dart';
import '../Constants/textStyle.dart';

Widget listMessages(List<Message> messages) {
  return SingleChildScrollView(
    child: Column(
      children: messages.map((message) {
        return InkWell(
          onTap: () {},
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
                        image: NetworkImage(message.sender.imageURL),
                      )),
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
                              message.sender.name,
                              style: AppTextStyles.subtitleText,
                            ),
                            Wrap(
                              children: [
                                Text(
                                  message.Content,
                                  style: AppTextStyles.bodyText(
                                      ColorsConstant.darkBlue),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              message.creationTime.toString(),
                              style: AppTextStyles.bodyText(
                                  ColorsConstant.darkBlue),
                            ),
                            message.numberOfUnreadMessage != 0
                                ? Container(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: ColorsConstant.blackBlue,
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4)),
                                    ),
                                    child: Text(
                                      message.numberOfUnreadMessage.toString(),
                                      style: AppTextStyles.bodyText(
                                          ColorsConstant.lightBlue),
                                    ),
                                  )
                                : Container()
                          ],
                        )
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        );
      }).toList(), // Ajoutez .toList() ici pour convertir le résultat en List<Widget>
    ),
  );
}
