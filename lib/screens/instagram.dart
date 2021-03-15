import 'package:flutter/material.dart';
import '../widgets/Posts.dart';
import '../widgets/Stories.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          actions: [
            IconButton(icon: Image.asset('assets/images/Mail.png'),),
          ],
          leading: IconButton(
            icon: Image.asset('assets/images/Camera.png'),
          ),
          title: Tab(icon: Image.asset('assets/images/Instagram_logo.png')),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 70,
              child: Stories(),
            ),
            SizedBox(
              height: _height - 150,
              child: Posts(),
            ),
          ],
        ),
      ),
    );
  }
}

