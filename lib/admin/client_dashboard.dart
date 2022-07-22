import 'package:flutter/material.dart';

class ClientDashboard extends StatelessWidget {
  const ClientDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          //padding: EdgeInsets.symmetric(vertical: screenSize.height*0.1,horizontal: screenSize.width*0.2),
          width: screenSize.width*0.7,
          height: screenSize.height*0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue,width: 5)
            //color: Colors.blue,
          ),

          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)
                  ),

                ),
                width: screenSize.width*0.7,
                height: screenSize.height*0.15,
                
              ),
              Container(width: screenSize.width*0.7,
                height: screenSize.height*0.025,),
              Container(

                width: screenSize.width*0.65,
                height: screenSize.height*0.5,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
