import 'package:ecommerse_user_app/screens/authentication/login_page.dart';
import 'package:ecommerse_user_app/screens/home_page.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  final _mobileNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Register in to get started",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF707070),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Experience the all new App!",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Image(
                          image: AssetImage("assets/icons/person-24px (1).png"),
                          height: 5,
                          width: 5,
                          color: Color(0xFF707070),
                        ),
                      ),
                      hintText: "Name",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Container(
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Image(
                          image: AssetImage("assets/icons/email-24px.png"),
                          height: 5,
                          width: 5,
                          color: Color(0xFF707070),
                        ),
                      ),
                      hintText: "E-mail ID",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: TextField(
                  controller: _mobileNumberController,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Image(
                          image: AssetImage("assets/icons/phone-24px.png"),
                          height: 5,
                          width: 5,
                          color: Color(0xFF707070),
                        ),
                      ),
                      hintText: "Mobile Number",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Container(
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Image(
                          image: AssetImage(
                              "assets/icons/Icon ionic-ios-lock.png"),
                          height: 5,
                          width: 5,
                          color: Color(0xFF707070),
                        ),
                      ),
                      suffixIcon: Image(
                        image: AssetImage("assets/icons/Icon awesome-eye.png"),
                        height: 20,
                        width: 20,
                        color: Color(0xFF707070),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: TextField(
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Image(
                          image: AssetImage(
                              "assets/icons/Icon ionic-ios-lock.png"),
                          height: 5,
                          width: 5,
                          color: Color(0xFF707070),
                        ),
                      ),
                      suffixIcon: Image(
                        image: AssetImage("assets/icons/Icon awesome-eye.png"),
                        height: 20,
                        width: 20,
                        color: Color(0xFF707070),
                      ),
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              GestureDetector(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (Context)=>HomePage()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF3AA4E),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          color: Colors.grey,
                          spreadRadius: 0,
                          blurRadius: 6,
                        )
                      ]),
                  child: Center(
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>LoginPage()));
                },
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: RichText(
                    text: TextSpan(
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFF707070))),
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(
                                color: Color(0xFF707070),
                                fontWeight: FontWeight.w700,
                                fontSize: 14)),
                      ],
                    ),
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
