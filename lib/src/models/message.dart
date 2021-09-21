import 'package:telegrame_clone/src/models/user.dart';

class Message {
  int id;
  String body;
  User sender;
  DateTime at;
  bool sent;
  bool read;
  Message(
      {required this.id,
      required this.body,
      required this.sender,
      required this.at,
      required this.sent,
      required this.read});
}

/* begin of dummy data */

var taklitMessages = [
  Message(
      id: 1,
      body: "Yes you can do it",
      sender: taklit,
      at: DateTime.now(),
      sent: true,
      read: true),
];

var ahmedMessages = [
  Message(
      id: 2,
      body: "\1F600",
      sender: ahmed,
      at: DateTime.now(),
      sent: true,
      read: false)
];

Map<User, List<Message>> messages = {
  taklit: taklitMessages,
  ahmed: ahmedMessages
};
