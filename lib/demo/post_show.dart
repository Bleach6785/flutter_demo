import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({@required this.post});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.name}'),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Image.network(post.imageUrl),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${post.name}',
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  '${post.bloodType}',
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  '${post.constellation}',
                  style: Theme.of(context).textTheme.body1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
