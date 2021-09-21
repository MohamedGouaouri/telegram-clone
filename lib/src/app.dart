import 'package:flutter/material.dart';
import 'package:telegrame_clone/src/views/home_view.dart';

class TelegrameApp extends StatefulWidget {
  const TelegrameApp({Key? key}) : super(key: key);

  @override
  _TelegrameAppState createState() => _TelegrameAppState();
}

class _TelegrameAppState extends State<TelegrameApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
        elevation: 0.0,
      ),
      body: HomeView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade300,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
