import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgURL1 =
        "https://picsum.photos/200/200"; //todo: duzgun olmasi icin url kismini bu sekilde olusturuduk
    return Scaffold(
      appBar: AppBar(
        title: const Text("image Widgets"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IntrinsicHeight(
              //todo: verilerimizi ekrana sigdiriyor en buyuk resme gore oranliyor kendini
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.stretch, //todo: yayilmasi icin yaptik
                children: [
                  Expanded(
                    child: Image.asset(
                      "assets/images/yemekresim.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      //todo: internetten resim almak icin kullaniriz
                      _imgURL1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.cyan,
                      child: Text(
                        "T",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      radius: 50,
                      backgroundImage: NetworkImage(_imgURL1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: FadeInImage.assetNetwork(
                //todo: resim yuklenene kadar bir yukleme gifti ekledik localden
                placeholder: "assets/images/loading.gif",
                image: _imgURL1, fit: BoxFit.cover,
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Placeholder(
                    //todo: bu widget ise bir yer tutucu gibi dusunebiliriz yani buraya bir resim gelecek seklinde
                    color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
