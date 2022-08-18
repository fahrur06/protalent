import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        width: screenSize.width,
        height: screenSize.height * 0.68,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Divider(
              height: 3,
              thickness: 3,
            ),
            SizedBox(
              height: screenSize.height * 0.07,
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 5),
                      width: screenSize.width * 0.2,
                      height: screenSize.height * 0.35,
                      child: Column(
                        children: [
                          Container(
                            width: screenSize.width * 0.12,
                            height: screenSize.height * 0.08,
                            decoration: const BoxDecoration(
                                //color: Colors.lightBlueAccent,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/logo/logo-eksad.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Spacer(),
                          Container(
                            width: screenSize.width * 0.15,
                            height: screenSize.height * 0.04,
                            //color: Colors.blue,
                            child: const Center(
                              child: Text(
                                '  Your one stop IT Solution',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          Container(
                            width: screenSize.width * 0.14,
                            height: screenSize.height * 0.03,
                            //color: Colors.blue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    launch(
                                        'https://www.linkedin.com/company/pt-tiga-daya-digital-indonesia-triputra-group-eksad-technology');
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.linkedinIn,
                                    size: 30,
                                  ),
                                  iconSize: 20,
                                ),
                                IconButton(
                                  onPressed: () {
                                    launch(
                                        'https://twitter.com/eksad_technology/');
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.twitter,
                                    size: 30,
                                  ),
                                  iconSize: 20,
                                ),
                                IconButton(
                                  onPressed: () {
                                    launch(
                                        'https://www.instagram.com/eksad_technology/');
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.instagram,
                                    size: 30,
                                  ),
                                  iconSize: 20,
                                ),
                                IconButton(
                                  onPressed: () {
                                    launch(
                                        'https://youtube.com/eksad_technology');
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.youtube,
                                    size: 30,
                                  ),
                                  iconSize: 20,
                                )
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 8,
                          )
                        ],
                      )),
                  Container(
                      width: screenSize.width * 0.1,
                      height: screenSize.height * 0.27,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenSize.width * 0.1,
                            height: screenSize.height * 0.04,
                            child: Text(
                              ' Sitemap',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          Container(
                            height: screenSize.height * 0.04,
                            child: itemBawah(
                              item: 'Home',
                              routeName: '/',
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: itemBawah(
                              item: 'About Us',
                              routeName: '/about',
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: itemBawah(
                              item: 'Service',
                              routeName: '/service',
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: itemBawah(
                              item: 'Career',
                              routeName: '/career',
                            ),
                          ),
                        ],
                      )),
                  Container(
                      width: screenSize.width * 0.13,
                      height: screenSize.height * 0.27,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: screenSize.width * 0.13,
                            height: screenSize.height * 0.04,
                            child: Text(
                              ' Solutions',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          Container(
                            height: screenSize.height * 0.04,
                            child: itemBawah(
                              item: 'Retained Search',
                              routeName: '/service',
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: itemBawah(
                              item: 'Dedicated Services',
                              routeName: '/service',
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: itemBawah(
                              item: 'Contract Services',
                              routeName: '/service',
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: itemBawah(
                              item: 'Recruitment',
                              routeName: '/service',
                            ),
                          ),
                        ],
                      )),
                  Container(
                      width: screenSize.width * 0.25,
                      height: screenSize.height * 0.65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: screenSize.width * 0.2,
                            height: screenSize.height * 0.04,
                            child: Text(
                              ' Contact',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.164,
                            child: ListTile(
                              leading: Icon(
                                Icons.phone,
                                size: 25,
                              ),
                              title: TextButton(
                                onPressed: () {
                                  launch('tel:02157958040');
                                },
                                child: Container(
                                  height: screenSize.height * 0.04,
                                  child: Text(
                                    '(021) 5795 - 8040',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.16,
                            child: ListTile(
                              leading: Icon(
                                Icons.mail,
                                size: 25,
                              ),
                              title: TextButton(
                                onPressed: () {
                                  launch(
                                      'mailto:Info@eksad.com?subject=Hello saya ingin bertanya tentang protalent');
                                },
                                child: Container(
                                  height: screenSize.height * 0.04,
                                  child: Text(
                                    'Hello@eksad.com',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.black87),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.25,
                            height: screenSize.height * 0.27,
                            child: ListTile(
                                leading: Icon(
                                  Icons.location_on,
                                  size: 30,
                                ),
                                title: Container(
                                  width: screenSize.width * 0.25,
                                  height: screenSize.height * 0.24,
                                  child: Text(
                                    'PT. Tiga Daya Digital Indonesia \nThe East '
                                    'Tower 19th Floor \nJl. Dr. Ide Anak Agung '
                                    '\nGde Agung Blok E3.2 '
                                    '\nMega Kuningan, \nJakarta Selatan 12950',
                                    style: TextStyle(
                                      fontSize: 17,
                                      height: 1.6,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const Divider(
              height: 3,
              thickness: 3,
            ),
            SizedBox(
              width: screenSize.width,
              height: screenSize.height * 0.13,
              child: const Center(
                  child: Text(
                'PT. Tiga Daya Digital Indonesia © 2018, All Rights Reserved.',
                style: TextStyle(letterSpacing: 1.3, height: 1.4, fontSize: 17),
              )),
            )
          ],
        ));
  }
}

class itemBawah extends StatelessWidget {
  const itemBawah({Key? key, required this.item, required this.routeName})
      : super(key: key);
  final String item;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Text(
          item,
          style: TextStyle(
              color: Color(0xff1e5ea8),
              //decoration: TextDecoration.underline,
              fontSize: 17),
        ));
  }
}
