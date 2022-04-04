import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgURL1 =
        "https://picsum.photos/200/200"; //todo: duzgun olmasi icin url kismini bu sekilde olusturuduk
    return Center(
      child: Column(
        children: [
          SizedBox(
            //todo: boyutlandirmak icin kullaniriz
            width: 150,
            child: Image.asset(
                "assets/images/yemekresim.jpeg"), //todo: asset olarak local resimlerimizi ekleme
          ),
          SizedBox(
            width: 150,
            child: Image.network(
              //todo: internetten resim almak icin kullaniriz
              _imgURL1,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Text(
              "T",
              style: Theme.of(context).textTheme.headline2,
            ),
            radius: 50,
            backgroundImage: NetworkImage(_imgURL1),
          ),
        ],
      ),
    );
  }
}
