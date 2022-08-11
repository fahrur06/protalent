import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';


class HomeNew1 extends StatelessWidget {
  const HomeNew1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height*0.7,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/ImageHome1.jpeg",),fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height*0.65,
          padding: EdgeInsets.only(left: screenSize.width * 0.3, top: screenSize.height * 0.15,bottom: screenSize.height * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: screenSize.width*0.25,
                height: screenSize.height*0.1,

                child: ShowUpAnimation(
                  delayStart: Duration(seconds: 1),
                  direction: Direction.horizontal,
                  child: Text(
                    'EMPOWER YOUR BUSINESS FOR SUCCESS.',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: screenSize.width*0.29,
                height: screenSize.height*0.27,
                child:
                ShowUpAnimation(
                  delayStart: Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: -0.2,
                  child: Text('If you’ve got the combination of the most sought-after IT'
                      ' expertise, which is augmented by new technologies that provide you with the '
                      'edge over your competition, you can create the future you want to see. Our'
                      ' top-of-the-line IT professional outsourcing and managed services allow companies '
                      'to plan for what’s to come.',
                      style: TextStyle(fontSize:16,letterSpacing: 1.8,height:1.4,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),

                ),
              ),
              Container(
                width: screenSize.width*0.13,
                height: screenSize.height*0.07,
                child:
                ShowUpAnimation(
                  delayStart: Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: -0.2,
                  child: ElevatedButton(onPressed: (){}, child: Text('CONTACT US',style: TextStyle(fontSize: 19,letterSpacing: 2,color: Colors.white),
                  ),
                      style: ElevatedButton.styleFrom(primary: Color(0xff1e5ea8),
                          onPrimary: Colors.red)
                  ),
                ),



              )
            ],
          ),


        ),
      ],
    );
  }
}
