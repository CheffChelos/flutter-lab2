import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: (BuildContext context, _) {
        return Post();
      },
      itemCount: 12,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 260,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ListTile(
              title: Text('Adfab Paris'),
              subtitle: Text('Adfab'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://assets.nrdc.org/sites/default/files/styles/headshot/public/brendan-guy-450.jpg?itok=MK85ttfr',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.network(
              'https://images.unsplash.com/photo-1615393457304-e0f4d3f47cd8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1046&q=80',
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
