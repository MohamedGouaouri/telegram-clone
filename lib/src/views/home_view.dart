import 'package:flutter/material.dart';
import 'package:telegrame_clone/src/models/user.dart';
import 'package:telegrame_clone/src/widgets/useritem_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return UserItemWidget(user: users[index]);
          }),
    );
  }
}
