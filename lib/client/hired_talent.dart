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
    return Column(
      children: [
        Container(
          color: Colors.amber,
          child: Row(
            children: [
              Column(
                children: [
                  Text("Hired Talent"),
                  Text("13 results found"),
                ],
              ),
              ElevatedButton(
                  onPressed: () {}, child: Icon(Icons.filter_alt_sharp)),
            ],
          ),
        ),
        Container(
          color: Colors.white,width: screenSize.width,
          child: Row(
            children: [
              Container(
                  width: screenSize.width * 0.3, child: Text("Hired Talent")),
              Container(
                  width: screenSize.width * 0.3, child: Text("Hired Talent")),
              Container(
                  width: screenSize.width * 0.3, child: Text("Hired Talent")),
            ],
          ),
        ),
        Expanded(
            child: Container(
              width: screenSize.width,
          color: Colors.white,
          child: ListView(children: [
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
    return Row(
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
                  width: 10,
                ),
                Text(nama)
              ],
            )),
        Container(width: screenSize.width * 0.3, child: Text(status)),
        Container(width: screenSize.width * 0.3, child: Text(posisi)),
      ],
    );
  }
}
