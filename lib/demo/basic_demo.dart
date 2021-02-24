import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/zh/4/4a/TWICE%28%ED%8A%B8%EC%99%80%EC%9D%B4%EC%8A%A4%29_Signal_%28EP%29.jpg',
          ),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(.5),
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(64.0),
              // ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 28, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                ),
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0),
              //   ],
              // ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Flutter Demo',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '李白';
  final String _title = '將進酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《 $_title 》— $_author，君不見，黃河之水天上來，奔流到海不復回。君不見，高堂明鏡悲白髮，朝如青絲暮成雪。人生得意須盡歡，莫使金樽空對月。天生我材必有用，千金散盡還復來。烹羊宰牛且為樂，會須一飲三百杯。岑夫子，丹丘生，將進酒，杯莫停。與君歌一曲，請君為我傾耳聽。鐘鼓饌玉不足貴，但願長醉不復醒。古來聖賢皆寂寞，惟有飲者留其名。陳王昔時宴平樂，斗酒十千恣歡謔。主人何為言少錢，徑須沽取對君酌。五花馬，千金裘，呼兒將出換美酒，與爾同銷萬古愁。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
