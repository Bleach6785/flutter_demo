import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: [
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 16.0,
              ),
              Text(
                posts[index].name,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].bloodType,
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(
                height: 16.0,
              ),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(.3),
                highlightColor: Colors.white.withOpacity(.1),
                onTap: () {
                  debugPrint('Tap');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
