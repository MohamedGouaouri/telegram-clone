import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:telegrame_clone/src/models/message.dart';
import 'package:telegrame_clone/src/models/user.dart';

// ignore: must_be_immutable
class UserItemWidget extends StatefulWidget {
  User user;
  UserItemWidget({Key? key, required this.user}) : super(key: key);

  @override
  _UserItemWidgetState createState() => _UserItemWidgetState();
}

class _UserItemWidgetState extends State<UserItemWidget> {
  // build a green dot widget to notify that user is online
  // ignore: todo
  // TODO: Stack it above the avatar
  buildUserOnlineNotifier(User user) {
    if (user.isOnline) {
      return Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
      );
    }
    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        InkWell(
          onTap: () {
            // go to chat screen
            print("tapped");
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: Container(
                  padding: EdgeInsets.all(2),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(widget.user.avatartPictureUrl),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade100,
                          spreadRadius: 1,
                          blurRadius: 2,
                        )
                      ]),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: size.width * 0.80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.user.username,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w800),
                          ),
                          messages[widget.user] != null
                              ? Text(
                                  DateFormat("MM / dd")
                                      .format(messages[widget.user]!.last.at),
                                  style: TextStyle(color: Colors.grey),
                                )
                              : SizedBox.shrink()
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        messages[widget.user] != null
                            ? messages[widget.user]!.last.body
                            : "",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Color(0xff0394fc)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(margin: EdgeInsets.only(left: 100), child: Divider())
      ],
    );
  }
}
