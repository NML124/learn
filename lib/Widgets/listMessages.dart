import 'package:flutter/material.dart';
import 'package:learn/models/message.dart';
import 'package:learn/providers/messages.dart';
import 'package:provider/provider.dart';

import '../Constants/colors.dart';
import '../Constants/numbers.dart';
import '../Constants/textStyle.dart';

class ListMessages extends StatelessWidget {
  const ListMessages({super.key});

  String formatDateTime(DateTime timeOfMessage) {
    Duration timeElapsed = DateTime.now().difference(timeOfMessage);
    if (timeElapsed.inMinutes > 1) {
      if (timeElapsed.inMinutes > 59) {
        if (timeElapsed.inHours > 23) {
          if (timeElapsed.inDays > 13) {
            return timeOfMessage.toString().substring(0, 10);
          } else {
            return "Il y a ${timeElapsed.inDays.toString()} j";
          }
        } else {
          return "Il y a ${timeElapsed.inHours.toString()} h";
        }
      } else {
        return "${timeElapsed.inMinutes.toString()} min";
      }
    } else {
      return "maintenant";
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Message> messages = Provider.of<Messages>(context).messages;
    return ListView.builder(
      itemBuilder: (ctx, index) {
        int NumberUnread = messages[index].numberOfUnreadMessage;
        String timeOfMessage = formatDateTime(messages[index].creationTime);
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
                        image: NetworkImage(messages[index].sender.imageURL),
                      )),
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          messages[index].sender.name,
                          style: AppTextStyles.subtitleText,
                        ),
                        Wrap(
                          children: [
                            Text(
                              messages[index].Content,
                              style: AppTextStyles.bodyText(
                                  ColorsConstant.darkBlue),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          timeOfMessage,
                          style:
                              AppTextStyles.bodyText(ColorsConstant.darkBlue),
                        ),
                        NumberUnread != 0
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
                                  NumberUnread > 99
                                      ? "+99"
                                      : NumberUnread.toString(),
                                  style: AppTextStyles.bodyText(
                                      ColorsConstant.lightBlue),
                                ),
                              )
                            : Container()
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        );
      },
      itemCount: messages.length,
    );
  }
}
