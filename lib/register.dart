import 'package:flutter/material.dart';
import 'package:pro_talent/login.dart';
import 'package:pro_talent/widget/whatsapp.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscure = true;

  final formKey = GlobalKey<FormState>();
  String _usname = '';
  String _usmail = '';
  String _uspswd = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/blue background login.jpg"),
            fit: BoxFit.fill,
          ),
        ),
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
              padding:  EdgeInsets.only(
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
                child: Form(
                  key: formKey,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: screenSize.width * 0.045,
                        top: screenSize.height * 0.05),
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
                              width: screenSize.width * 0.2,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  labelText: "Username",
                                  hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                ),
                                onChanged: (value)=> _usname = value,
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
                          width: screenSize.width * 0.2,
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              labelText: "Email",
                              hintStyle: TextStyle(),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                            onChanged: (value)=> _usmail = value,
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
                            onChanged: (value)=> _uspswd = value,
                          ),
                        ),
                        Spacer(
                          flex: 4,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: screenSize.width * 0.09,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => login(),
                                    ),
                                  );
                                },
                                child: Text("LOGIN"),
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width * 0.02,
                            ),
                            Container(
                              height: 30,
                              width: screenSize.width * 0.09,
                              child: ElevatedButton(
                                onPressed: () => WAChat().launchWhatsApp(phone: 628112622993, message: 'Form Register Client Protalent %0A%0AUsername : $_usname %0Aemail address : $_usmail %0Apassword : $_uspswd %0A%0Adengan ini saya ingin mengajukan regristrasi akun baru.%0ATerimakasih.'),
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
            ),
          ],
        ),
      ),
    );
  }
}
