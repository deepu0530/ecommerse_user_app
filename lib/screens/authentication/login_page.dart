import 'package:ecommerse_user_app/screens/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

   final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
             padding: EdgeInsets.only(left: 20, right: 20,top: 60,),
            child: Column(
         //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Text(
               "Register in to get started",
               style: TextStyle(
                 fontSize: 18,
                 color: Color(0xFF707070),
                 fontWeight: FontWeight.w400,
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
                height: 30,
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
                  controller: _passwordController,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Use Mobile Number",
                 style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFFF3AA4E),
                        fontWeight: FontWeight.w500,
                      )
                  )
                ],
              ),
              
        ],
      ),
          ),
       Positioned(
         bottom: 20,
         left: 0,
         right: 0,
         child: Column(
           children: [
            Divider(thickness: 0.5,color: Color(0xFF707070),),
             GestureDetector(
               onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>HomePage()));
               },
               child: Container(
                             margin: EdgeInsets.symmetric(horizontal: 20),
                             padding: EdgeInsets.symmetric(vertical: 15),
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF3AA4E),
                  // boxShadow: [
                  //   BoxShadow(
                  //     offset: Offset(0, 4),
                  //     color: Colors.grey,
                  //     spreadRadius: 0,
                  //     blurRadius: 6,
                  //   )
                  // ]
                  ),
                             child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                             ),
                           ),
             ),
           ],
         ),
       ),
        ],
      ),
    );
  }
}