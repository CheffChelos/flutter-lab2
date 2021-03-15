import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Square(),
                  Expanded(
                    child: Square(),
                  ),
                  Square()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Square(),
                  Rect(),
                  Square(),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    width: 40,
    height: 40,
    margin: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.amber,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 3.0,
          spreadRadius: 0.5,
        )
      ],
    ),
  );
}

class Rect extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    width: 40,
    height: 70,
    margin: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.amber,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 3.0,
          spreadRadius: 0.5,
        )
      ],
    ),
  );
}
