import 'package:flutter/cupertino.dart';
import 'package:learn/models/message.dart';
import 'package:learn/models/user.dart';

class Messages with ChangeNotifier {
  List<Message> _messages = [
    Message(
        id: "45",
        sender: User(id: "1", name: "Jules", imageURL: "/"),
        Content: "hey Salut",
        creationTime: DateTime.now(),
        numberOfUnreadMessage: 2),
    Message(
        id: "47",
        sender: User(id: "2", name: "Francoise", imageURL: "/"),
        Content: "Ca beigne ?",
        creationTime: DateTime.now(),
        numberOfUnreadMessage: 4),
    Message(
        id: "48",
        sender: User(id: "3", name: "Paul", imageURL: "/"),
        Content: "Bonjour",
        creationTime: DateTime.now(),
        numberOfUnreadMessage: 111),
    Message(
        id: "49",
        sender: User(id: "4", name: "Louis", imageURL: "/"),
        Content: "hey",
        creationTime: DateTime.now(),
        numberOfUnreadMessage: 0),
    Message(
        id: "49",
        sender: User(id: "5", name: "Jordan", imageURL: "/"),
        Content: "Buenos",
        creationTime: DateTime.now(),
        numberOfUnreadMessage: 15)
  ];

  List<Message> get messages {
    return [..._messages];
  }

  set messages(List<Message> actualMessages) {
    _messages = actualMessages;
    notifyListeners();
  }
}
