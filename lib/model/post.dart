class Post {
  const Post({
    this.name,
    this.bloodType,
    this.imageUrl,
    this.constellation,
  });

  final String name;
  final String bloodType;
  final String imageUrl;
  final String constellation;
}

final List<Post> posts = [
  Post(
    name: '林娜璉',
    bloodType: 'A型',
    imageUrl: 'https://pic.pimg.tw/hanzhiyu/1605433237-4093306355-g_n.jpg',
    constellation: '處女座',
  ),
  Post(
    name: '俞定延',
    bloodType: 'O型',
    imageUrl: 'https://pic.pimg.tw/hanzhiyu/1605433234-429629466-g_n.jpg',
    constellation: '天蠍座',
  ),
  Post(
    name: '平井桃',
    bloodType: 'A型',
    imageUrl: 'https://pic.pimg.tw/hanzhiyu/1605433237-1293495628-g_n.jpg',
    constellation: '天蠍座',
  ),
  Post(
    name: '湊崎紗夏',
    bloodType: 'B型',
    imageUrl: 'https://pic.pimg.tw/hanzhiyu/1605433239-1295778819-g_n.jpg',
    constellation: '摩羯座',
  ),
  Post(
    name: '朴志效',
    bloodType: 'O型',
    imageUrl: 'https://pic.pimg.tw/hanzhiyu/1605433236-1651487439-g_n.jpg',
    constellation: '水瓶座',
  ),
  Post(
    name: '名井南',
    bloodType: 'A型',
    imageUrl: 'https://pic.pimg.tw/hanzhiyu/1605433236-1796974909-g_n.jpg',
    constellation: '牡羊座',
  ),
  Post(
    name: '金多賢',
    bloodType: 'O型',
    imageUrl: 'https://pic.pimg.tw/hanzhiyu/1605433234-3363540-g_n.jpg',
    constellation: '雙子座',
  ),
  Post(
    name: '孫彩瑛',
    bloodType: 'RH-B型',
    imageUrl: 'https://pic.pimg.tw/hanzhiyu/1605433233-3261418575-g_n.jpg',
  ),
  Post(
    name: '周子瑜',
    bloodType: 'A型',
    imageUrl: 'https://pic.pimg.tw/hanzhiyu/1605433239-2733203814-g_n.jpg',
    constellation: '雙子座',
  ),
];
