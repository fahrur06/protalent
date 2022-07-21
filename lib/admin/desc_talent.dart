import 'package:flutter/material.dart';
import 'package:pro_talent/admin/const/text_dashboard.dart';
import 'package:pro_talent/admin/dashboard.dart';

class SelectTalent extends StatelessWidget {
  const SelectTalent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Container(
          child: Stack(
        children: [
          Column(children: [
            Container(
              height: 150,
              color: Colors.black26,
            ),
            Container(
              height: 60,
              color: Color.fromARGB(200, 9, 47, 171),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 20,
                    child: Text('')),
                Column(
                  children: [
                    Container(
                      width:150,
                        height: 30,
                        child: Text('Pahrur',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),)),

                    Container(
                      padding: EdgeInsets.only(top: 5),
                        width:300,
                        height: 30,
                        child: Text('Full Stack JavaScript Development',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white)))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 2),
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage('assets/logo/logo_protalent.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
            ),
            Container(
              height: 380,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 520,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 35,top: 15),
                          width: 500,
                          child: Text('Work Experience',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2)),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          width: 490,
                          height: 260,
                          child: Column(
                            children: [
                              _workexp('PT. Selamat Sejahtera', 'Mar 2015 - Mar 2018'),
                              _workexp('Fahrur Tekstil Indonesia', 'Apr 2018 - Juli 2022'),
                              _workexp('Tokopedia', 'Juli 2022 - Sep 2022'),
                              _workexp('PT. Selamat Sejahtera', 'Mar 2015 - Mar 2018'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 780,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          //color: Colors.red,
                        ),
                        Container(
                          height: 35,
                          //color: Colors.grey,
                          child: Text(job2+' | '+job3,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
                        ),
                        _rowpekerjaan('Level', deskripsi),
                        _rowpekerjaan('Spesialisasi', deskripsi),
                        _rowpekerjaan('Bidang Pekerjaan', deskripsi),
                        _rowpekerjaan('Tingkat Jabatan', deskripsi),


                        //SPASI

                        Container(
                          height: 20,
                          //color: Colors.red,
                        ),
                        Container(
                          width: 350,
                          height: 35,
                          //color: Colors.grey,
                          child: Text('Description',style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
                        ),
                        _rowdeskripsi(deskripsis),
                        _rowdeskripsi(deskripsis),
                        _rowdeskripsi(deskripsis),
                        _rowdeskripsi(deskripsis)

                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 430,
              color: Color.fromARGB(200, 179, 183, 197),
            child: Row(
              children: [
                Container(
                  width: 505,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 35,top: 15),
                        width: 505,
                        height: 55,
                        //color: Colors.red,
                        child: Text('Education',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2)),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        width: 490,
                        // color: Colors.white,
                        child: Column(
                          children: [
                            _edukasi('Eksad University', 'Sarjana 1', 'Apr 2018 - Juni 2022'),
                            _edukasi('Eksad University', 'Sarjana 1', 'Apr 2018 - Juni 2022'),
                            _edukasi('Eksad University', 'Sarjana 1', 'Apr 2018 - Juni 2022'),
                            _edukasi('Eksad University', 'Sarjana 1', 'Apr 2018 - Juni 2022'),
                            _edukasi('Eksad University', 'Sarjana 1', 'Apr 2018 - Juni 2022'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 800,
                  //color: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 35,top: 15),
                        width: 800,
                        height: 55,
                        //color: Colors.grey,
                        child: Text('Language',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2)),
                      ),
                      Container(
                        width: 780,
                        // color: Colors.white,
                        child: Column(
                          children: [
                            _language('INDONESIAN', '9', '8'),
                            _language('PHILIPINA', '5', '7'),
                            _language('ENGLISH', '9', '8'),
                            _language('MALAYSIAN', '9', '8'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ),
            Container(
              height: 400,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    width: 1250,
                    height: 50,
                    //color: Colors.red,
                      child: Text('Skills',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2)),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        width: 520,
                        child: Column(
                          children: [
                            _skills('Flutter Developer'),
                            _skills('Java Developer'),
                            _skills('React Native Developer'),
                            _skills('Mobile Developer'),
                          ],
                        ),
                      ),
                      Container(
                        width: 630,
                        child: Column(
                          children: [
                            _skills('Bootcamp Flutter by Eksad'),
                            _skills('Bootcamp Java by Eksad'),
                            _skills('Bootcamp React by Eksad'),
                            _skills('Bootcamp Mobile by Eksad'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )

          ],
          ),
          Container(
            padding: EdgeInsets.only(top: 60, left: 8),
            width: 260,
            height: 210,
                                          //color: Colors.blueAccent,
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
                  onPressed: () {
                    Navigator.push(
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
                width: 120,
                height: 35,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.download_rounded,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Download',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}


ListTile _workexp(String _perusahaan, String _tanggal) {
  return ListTile(
    title: Text(_perusahaan,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,height: 1.5
      ),),
    subtitle: Text(_tanggal),
  );
}

ListTile _edukasi(String _pengalaman, String _tingkat, String _tanggal) {
  return ListTile(
    minLeadingWidth: 8,
    leading: Container(
      padding: EdgeInsets.only(top: 7),
        child: Icon(Icons.circle,size: 12,color: Colors.black,)),
    title: Text(_pengalaman,
      style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17,height: 1.5
      ),),
    subtitle: Text(_tingkat),
    trailing: Text(_tanggal),
  );
}

ListTile _language(String _bahasa, String _rangeint, String _rangeint2) {
  return ListTile(
    title: Text(_bahasa,
      style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17,height: 1.5
      ),),
    subtitle: Text('Bicara: '+_rangeint+" | "+' Menulis: '+_rangeint2,
      style: TextStyle(fontSize: 15),
    ),
  );
}

ListTile _skills(String skill){
  return ListTile(
    title: Text(skill,
      style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,height: 1.5
      ),
    ),

    );

}

Row _rowpekerjaan (String _job, String _jabatan){
  return Row(
    children: [
      Container(
        padding: EdgeInsets.only(left: 15),
        width: 180,
        height: 20,
        child: Text(_job,style: TextStyle(fontSize: 16)),
      ),
      Container(
        padding: EdgeInsets.only(top: 3),
        height: 25,
        child: Text(': '+_jabatan),
      )
    ],
  );
}

Row _rowdeskripsi (String _deskripsi){
  return Row(
        children: [
          Container(
            width: 15,
            child: Icon(Icons.circle,size: 12,color: Colors.black,),),
          Container(
            padding: EdgeInsets.only(left: 7,top: 5),
            width: 765,
            height: 25,
            child: Text(deskripsis),
          ),
        ],
      );
}




// Column _workexp(String _perusahaan, String _tanggal) {
//   return Column(
//     children: [
//       Container(
//         padding: EdgeInsets.only(top: 5),
//         height: 25,
//         child: Text(_perusahaan,
//             style: TextStyle(
//                 fontSize: 15, fontWeight: FontWeight.bold, height: 1.5)),
//       ),
//       Container(
//         height: 17,
//         padding: EdgeInsets.only(top: 2,),
//         child: Text(_tanggal),
//       )
//     ],
//   );
// }