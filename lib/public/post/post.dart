import 'package:flutter/material.dart';
import 'package:pro_talent/widget/responsive.dart';
import 'package:pro_talent/appbar/appbar_home.dart';
import 'package:pro_talent/homepage.dart';
import 'package:pro_talent/widget/grid_post.dart';
import 'package:pro_talent/const/text_post.dart';
import 'package:pro_talent/public/post/post_body.dart';
import 'package:pro_talent/footer.dart';
import 'package:pro_talent/widget/whatsapp.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: WAChat(),
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarHomeSmall(screenSize)
          : AppbarHomeLarge(screenSize, context, Colors.black, Colors.black,
              Colors.blue, Colors.black),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            height: 40,
            child: Row(
              children: [
                const SizedBox(
                  width: 56,
                ),
                Container(
                    height: 20,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Home',
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ))),
                Container(
                  padding: const EdgeInsets.only(top: 1),
                  height: 20,
                  child: const Text(
                    ' > ',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
                Container(
                  height: 20,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Post(),
                          ),
                        );
                      },
                      child: const Text(
                        'News',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      )),
                )
              ],
            ),
          ),
          Container(
            height: screenSize.height,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(50),
              crossAxisSpacing: 50,
              mainAxisSpacing: 50,
              crossAxisCount: 3,
              children: <Widget>[
                GridContainer(
                  HeadGrid: headgrid1,
                  ImageGrid: 'assets/images/eksad.jpg',
                  BodyGrid: bodygrid1,
                  arah: PostBody(
                    Image: 'assets/images/eksad.jpg',
                    HeadText: headgrid1,
                    Tanggal: tanggal,
                    Bodyfull: bodyfull1,
                    Urutan: urutan1,
                  ),
                ),
                GridContainer(
                  HeadGrid: headgrid2,
                  ImageGrid: 'assets/images/orangkerja.png',
                  BodyGrid: bodygrid2,
                  arah: PostBody(
                    Image: 'assets/images/orangkerja.png',
                    HeadText: headgrid2,
                    Tanggal: tanggal,
                    Bodyfull: bodyfull2,
                    Urutan: urutan2,
                  ),
                ),
                GridContainer(
                  HeadGrid: headgrid3,
                  ImageGrid: 'assets/images/cloud.png',
                  BodyGrid: bodygrid3,
                  arah: PostBody(
                    Image: 'assets/images/cloud.png',
                    HeadText: headgrid3,
                    Tanggal: tanggal,
                    Bodyfull: bodyfull3,
                    Urutan: urutan3,
                  ),
                ),
                GridContainer(
                  HeadGrid: headgrid4,
                  ImageGrid: 'assets/images/bootcamp1.jpg',
                  BodyGrid: bodygrid4,
                  arah: PostBody(
                    Image: 'assets/images/bootcamp1.jpg',
                    HeadText: headgrid4,
                    Tanggal: tanggal4,
                    Bodyfull: bodyfull4,
                    Urutan: urutan4,
                  ),
                ),
                GridContainer(
                  HeadGrid: headgrid5,
                  ImageGrid: 'assets/images/layanan_kami.jpg',
                  BodyGrid: bodygrid5,
                  arah: PostBody(
                    Image: 'assets/images/layanan_kami.jpg',
                    HeadText: headgrid5,
                    Tanggal: tanggal5,
                    Bodyfull: bodyfull5,
                    Urutan: urutan5,
                  ),
                ),
                GridContainer(
                  HeadGrid: headgrid6,
                  ImageGrid: 'assets/images/eksad_IT_resources.jpg',
                  BodyGrid: bodygrid6,
                  arah: PostBody(
                    Image: 'assets/images/eksad_IT_resources.jpg',
                    HeadText: headgrid6,
                    Tanggal: tanggal6,
                    Bodyfull: bodyfull6,
                    Urutan: urutan6,
                  ),
                ),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
