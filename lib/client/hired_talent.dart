import 'package:flutter/material.dart';

class HiredTalent extends StatefulWidget {
  const HiredTalent({Key? key}) : super(key: key);

  @override
  State<HiredTalent> createState() => _HiredTalentState();
}

class _HiredTalentState extends State<HiredTalent> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenSize1 = screenSize.width * 0.8;
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            color: Colors.grey[200],
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hired Talent",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text("13 results found"),
                  ],
                ),
                SizedBox(
                  width: screenSize1 * 0.5,
                ),
                ElevatedButton(
                    onPressed: () {}, child: Icon(Icons.filter_alt_sharp)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            width: screenSize.width,
            child: Row(
              children: [
                Container(width: screenSize.width * 0.3, child: Text("Name")),
                Container(width: screenSize.width * 0.2, child: Text("Status")),
                Container(
                    width: screenSize.width * 0.3, child: Text("Position")),
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: screenSize.width,
            color: Colors.white,
            child: ListView(controller: ScrollController(), children: [
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Bagas Wijayanto",
                status: "Hired",
                posisi: "Java Developer",
              ),
            ]),
          ))
        ],
      ),
    );
  }
}

class ListProfil extends StatelessWidget {
  const ListProfil(
      {Key? key,
      required this.screenSize,
      required this.nama,
      required this.posisi,
      required this.status})
      : super(key: key);

  final Size screenSize;
  final String nama;
  final String status;
  final String posisi;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
              width: screenSize.width * 0.3,
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage("assets/images/petrik.png"),
                    radius: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(nama)
                ],
              )),
          Container(width: screenSize.width * 0.2, child: Text(status)),
          Container(width: screenSize.width * 0.3, child: Text(posisi)),
        ],
      ),
    );
  }
}
