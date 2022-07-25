import 'package:flutter/material.dart';
import 'package:pro_talent/widget/responsive.dart';
import 'package:pro_talent/public/appbar_home.dart';
import 'package:pro_talent/public/post/post.dart';
import 'package:pro_talent/homepage.dart';
import 'package:pro_talent/public/footer.dart';

class PostBody extends StatelessWidget {
  final String Image;
  final String HeadText;
  final String Tanggal;
  final String Bodyfull;
  final String Urutan;
  const PostBody(
      {Key? key,
        required this.Image,
        required this.HeadText,
        required this.Tanggal,
        required this.Bodyfull,
        required this.Urutan,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
        ? AppbarHomeSmall(screenSize)
        : AppbarHomeLarge(screenSize, context),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 70, right: 70),
            height: 850,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 3),
                    height: 90,
                    child: Row(
                      children: [
                        Container(
                            height: 20,
                            child: TextButton(onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            }, child: Text('Home',style: TextStyle(color: Colors.blue,fontSize: 17),))
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 1),
                          height: 20,
                          child: Text(' > ',style: TextStyle(color: Colors.blue,fontSize: 17),),
                        ),
                        Container(
                          height: 20,
                          child: TextButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Post(),
                              ),
                            );
                          }, child: Text('News',style: TextStyle(color: Colors.blue,fontSize: 17),
                          ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 1),
                          height: 20,
                          child: Text(' >  ',style: TextStyle(color: Colors.blue,fontSize: 17),),
                        ),
                        Container(
                          height: 20,
                          child: Text(Urutan,style: TextStyle(color: Colors.blue,fontSize: 17),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Image),
                          fit: BoxFit.cover),
                    ),
                    height: 450,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 19),
                    child: Text(
                      HeadText,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(200, 4, 4, 52),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      Tanggal,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 19),
                    child: Text(
                      Bodyfull,
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Footer(),
          // Container(
          //   height: 200,
          //   color: Colors.black87,
          //   child: Center(
          //     child: Text(
          //       'PT. Tiga Daya Digital Indonesia',
          //       style: TextStyle(fontSize: 16, color: Colors.white),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
