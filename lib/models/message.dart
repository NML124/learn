import 'package:learn/models/user.dart';

class Message {
  final String id;
  final User sender;
  final String Content;
  final DateTime creationTime;
  final int numberOfUnreadMessage;

  Message(
      {required this.id,
      required this.sender,
      required this.Content,
      required this.creationTime,
      required this.numberOfUnreadMessage});
}
