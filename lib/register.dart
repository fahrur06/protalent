import 'package:flutter/material.dart';
import 'package:pro_talent/login.dart';

import 'admin/dashboard.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.fromLTRB(screenSize.width*0.13, screenSize.height*0.13, screenSize.width*0.13, screenSize.height*0.13),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.grey)),
          child: Row(
            children: [
              Container(
                color: Colors.blue,
                width: screenSize.width * 0.36,
                height: screenSize.height * 0.9,
                child: Image.asset("assets/logo/eksad.jpg"),
              ),
              Container(
                padding: EdgeInsets.only(left: screenSize.width*0.08,top: screenSize.height*0.1),
                width: screenSize.width * 0.36,
                height: screenSize.height * 0.9,
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
                        Text("Nama"),
                      ],
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: screenSize.width*0.2,
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              labelText: "Username",
                              hintStyle: TextStyle(),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ),
                        ),
                      ],
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
                      width: screenSize.width*0.2,
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
                      width: screenSize.width*0.2,
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
                          width: screenSize.width*0.09,
                          child: ElevatedButton(
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => login(),
                              ),
                            );},
                            child: Text("LOGIN"),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        Container(
                          height: 30,
                          width: screenSize.width*0.09,
                          child: ElevatedButton(
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ),
                            );},
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
