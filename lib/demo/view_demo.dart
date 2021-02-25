import 'package:flutter/material.dart';

import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts[index].name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                posts[index].bloodType,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      // scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('Page:$currentPage'),
      controller: PageController(
        initialPage: 1,
        keepPage: false,
        viewportFraction: .85, // 佔用比例(依照滾動方向調整)
      ),
      children: [
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text('ONE',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
              )),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text('TWO',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
              )),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text('THREE',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
