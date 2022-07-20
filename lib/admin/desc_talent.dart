import 'package:flutter/material.dart';
import 'package:pro_talent/admin/const/text_dashboard.dart';
import 'package:pro_talent/admin/dashboard.dart';

class SelectTalent extends StatelessWidget {
  const SelectTalent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  color: Colors.black26,
                ),

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [

                          SizedBox(
                            width: 495,
                          ),
                          Container(
                            width: 200,
                            height: 50,
                            //color: Colors.blue,
                            child: Center(
                              child: Text(
                                nama,
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 300,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 2),
                            width: 180,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/logo/logo_protalent.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        child: Text(
                          job,
                          style: TextStyle(fontSize: 16),),
                      ),
                      Container(
                        height: 40,
                        //color: Colors.blue,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 320,
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 5),
                              child: Text(
                                job2,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 2,
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                job3,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 25,
                        //color: Colors.grey,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 330,
                            ),
                            Container(
                              width: 130,
                             // color: Colors.red,
                              child: Text(
                                'Industry',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              child: Text(': $deskripsi'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 25,
                        //color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 330,
                            ),
                            Container(
                              width: 130,
                              //color: Colors.red,
                              child: Text(
                                'Spesialisasi',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              child: Text(': $deskripsi2'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 25,
                        //color: Colors.blue,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 330,
                            ),
                            Container(
                              width: 130,
                              //color: Colors.red,
                              child: Text(
                                'Bidang Pekerjaan',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              child: Text(': $deskripsi3'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 25,
                        //color: Colors.grey,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 330,
                            ),
                            Container(
                              width: 130,
                             // color: Colors.red,
                              child: Text(
                                'Tingkat Jabatan',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              child: Text(': $deskripsi4'),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 40,
                       // color: Colors.blue,
                        child: Row(
                          children: [
                            // SizedBox(
                            //   width: 420,
                            // ),
                            Container(
                              padding: EdgeInsets.only(left: 50),
                              child: Text('Description   :',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5),
                      ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 60, left: 8),
              width: 240,
              height: 350,
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage('assets/images/petrik.png'),
                          fit: BoxFit.contain),
                    ),
                  ),
                  Container(
                    child: Text('Work Experience',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            height: 1.5)),
                  ),
                  _workexp('Fahrur Tekstil Indonesia','Apr 2018 - Juli 2022'),
                  _workexp('Tokopedia', 'Juli 2022 - Sep 2022')
                  // _workexp('PT. GDN Sejahtera', 'Apr 2015 - Sekarang')
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: 90,
                  height: 35,
                  child: TextButton.icon(
                    onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      ),
                    );
                      },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Back',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: 120,height: 35,
                  child: TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.download_rounded,color: Colors.black,),
                    label: Text('Download',style: TextStyle(color: Colors.black),),
                  ),
                ),
              ],
            ),
          ],
        )),
      ],
    );
  }
}

Column _workexp (String _perusahaan, String _tanggal){
  return Column(
    children: [
      Container(
        child: Text(_perusahaan,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                height: 1.5)),
      ),
      Container(
        padding: EdgeInsets.only(top: 2,bottom: 5),
        child: Text(_tanggal),
      )
    ],
  );
}
