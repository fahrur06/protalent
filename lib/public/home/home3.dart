import 'package:flutter/material.dart';
import 'package:pro_talent/public/post/post.dart';
import 'package:pro_talent/public/const/text_post.dart';
import 'package:pro_talent/public/post/post_body.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: screenSize.width,
      height: screenSize.height*0.75,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF42A5F5),
                Color(0xFF2B69A4),
                Color(0xFF0D5396),
              ],),
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _container(context, screenSize,Color.fromARGB(255, 241, 23, 42),
                    'assets/images/bootcamp4.jpg','Bootcamp Batch 4', row1,
                    PostBody(Image: 'assets/images/3.jpeg',
                        HeadText: headgrid1, Tanggal: tanggal, Bodyfull: bodyfull1, Urutan: urutan1)),
                _container(context, screenSize,Color.fromARGB(255, 241, 23, 42),
                    'assets/images/eksad.jpg','Penghargaan Eksad', row2,
                    PostBody(Image: 'assets/images/2.jpeg',
                        HeadText: headgrid2, Tanggal: tanggal, Bodyfull: bodyfull2, Urutan: urutan2)),
                _container(context, screenSize,Color.fromARGB(255, 241, 23, 42),
                    'assets/images/arham.jpg','Talenta ProTalent', row3,
                    PostBody(Image: 'assets/images/1.jpeg',
                        HeadText: headgrid3, Tanggal: tanggal, Bodyfull: bodyfull3, Urutan: urutan3)),
              ],
            ),
            TextButton.icon(
              onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Post(),
                ),
              );
              },
              icon: const Icon(Icons.newspaper,color: Colors.white,size: 30,),
              label: const Text('Read All News',style: TextStyle(fontSize: 30,color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}


Container _container (BuildContext context,Size screenSize,Color warna,String gambar, String title,String isi, Widget arah,){

  return Container(
    decoration: BoxDecoration(
      color: warna,
      //Color.fromARGB(255, 241, 23, 42),
      borderRadius: BorderRadius.circular(30),
    ),
    width: screenSize.width*0.2,
    height: 460,
    child: Column(
      children: [
        Container(
          height: 240,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(gambar),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            overflow: TextOverflow.ellipsis,
            title,
            style: TextStyle(color: Colors.white, fontSize: 27,fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: 130,

          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            isi,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => arah,
                ),
              );
            },
            child: const Text(
              'LEARN MORE',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white),
            )
        )
      ],
    ),
  );
}