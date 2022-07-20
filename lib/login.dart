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
        color: Colors.grey[100],
        padding: EdgeInsets.fromLTRB(200, 100, 200, 100),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.grey)),
          child: Row(
            children: [
              Container(
                color: Colors.blue,
                width: screenSize.width * 0.4,
                height: screenSize.height * 0.9,
                child: Image.asset("assets/logo/eksad.jpg"),
              ),
              Container(
                padding: EdgeInsets.only(left: 100,top: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: screenSize.width * 0.03),
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
                      width: 300,
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
                      width: 300,
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
                          width: 120,
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
                          width: 120,
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
            ],
          ),
        ),
      ),
    );
  }
}
