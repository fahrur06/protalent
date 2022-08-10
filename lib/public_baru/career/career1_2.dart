import 'package:flutter/cupertino.dart';

class Career1_2 extends StatelessWidget {
  const Career1_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.5,
      height: 330,
      color: Color.fromARGB(60, 190, 169, 169),
      padding: EdgeInsets.only(
        left: screenSize.width * 0.10,
        right: screenSize.width * 0.10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 40,),
          Container(
            width: screenSize.width,
            child: Text('How do we help?',
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 12, 66, 101),
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 20,),
          Container(
            width: screenSize.width,
            child: Text(
                'The most difficult part of finding the right job is finding the right job. We get this and '
                    'we’re here to make this process a bit easier for you.',
                style: TextStyle(
                    fontSize: 18,
                    height: 1.3
                )),
          ),
          SizedBox(height: 40,),
          Container(
            width: screenSize.width,
            child: Text(
                'Each candidate, each one of you have a unique advantage and we work hard to help you identify '
                    'your core skills, technical abilities and competitive edge to help you grab that right '
                    'opportunity!In addition to all the placement opportunities we discuss and share, '
                    'we promise support and confidentiality to all your matters.',
                style: TextStyle(
                    fontSize: 18,
                    height: 1.3
                )),
          ),
        ],
      ),
    );
  }
}
