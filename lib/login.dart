import 'package:flutter/material.dart';
import 'package:pro_talent/register.dart';

import 'admin/dashboard.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Colors.grey[100],
        padding: EdgeInsets.only(
            left: screenSize.width * 0.15,
            top: screenSize.height * 0.13,
            bottom: screenSize.height * 0.13),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 10, 116, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              width: screenSize.width * 0.36,
              height: screenSize.height * 0.9,
              child: Image.asset(
                "assets/logo/eksad.jpg",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.33, top: screenSize.height * 0.07),
              child: Container(
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5,
                      color: Color.fromARGB(255, 10, 116, 255),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 10, 116, 255).withAlpha(60),
                        blurRadius: 15.0,
                        spreadRadius: 20.0,
                        offset: Offset(
                          0.0,
                          3.0,
                        ),
                      ),
                    ]),
                child: Container(
                  padding: EdgeInsets.only(
                      left: screenSize.width * 0.045,
                      top: screenSize.height * 0.1),
                  width: screenSize.width * 0.36,
                  height: screenSize.height * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(left: screenSize.width * 0.055),
                        height: screenSize.width * 0.02,
                        child: Image.asset("assets/logo/logo_protalent.png"),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: Colors.grey[500],
                            size: screenSize.width * 0.01,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Email"),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        height: 40,
                        width: screenSize.width * 0.2,
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintStyle: TextStyle(),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.vpn_key_outlined,
                            color: Colors.grey[500],
                            size: screenSize.width * 0.01,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Password"),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        height: 40,
                        width: screenSize.width * 0.2,
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            labelText: "Password",
                            suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(
                                  () {
                                    _isObscure = !_isObscure;
                                  },
                                );
                              },
                            ),
                            hintStyle: TextStyle(),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: screenSize.width * 0.08,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (Context) {
                                      return Dashboard();
                                    },
                                  ),
                                );
                              },
                              child: Text("LOGIN"),
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.04,
                          ),
                          Container(
                            height: 30,
                            width: screenSize.width * 0.08,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Register(),
                                  ),
                                );
                              },
                              child: Text("REGISTER"),
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 7,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
