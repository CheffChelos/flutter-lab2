import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 80,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://qodebrisbane.com/wp-content/uploads/2019/07/This-is-not-a-person-2-1.jpeg',
              ),
              radius: 25,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text('Katrin'),
          ),
        ],
      ),
    );
  }
}

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, _) {
          return Story();
        },
        itemCount: 13,
      ),
    );
  }
}
