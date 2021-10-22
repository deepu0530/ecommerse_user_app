import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [
    "assets/images/Rectangle 23.png",
    "assets/images/Rectangle 23.png",
    "assets/images/Rectangle 23.png",
    "assets/images/Rectangle 23.png",
    "assets/images/Rectangle 23.png",
  ];
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  //color: Colors.red,
                  child: CarouselSlider(
                    carouselController: CarouselController(),
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                     
                      height: MediaQuery.of(context).size.height * 0.6,
      
                      viewportFraction: 1.0,
              enlargeCenterPage: false,
                      initialPage: 0,
                   
                    ),
                    items: items.map((imgUrl) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          width: double.infinity,
                          //width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          
                          child: Center(
                            child: Image(
                              //fit: BoxFit.cover,
                              image: AssetImage(imgUrl),
                            ),
                          ),
                        );
                      });
                    }).toList(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Center(
                          child: DotsIndicator(
  dotsCount: items.length,
  position: 0,
  decorator: DotsDecorator(
    size: const Size.square(12.0),
    activeSize: const Size(22.0, 12.0),
    color: Color(0xFFDFDADA),
    activeColor: Color(0xFF707070),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
  ),
),
                        ),
                      ),
                      Text(
                        "Eyevy",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF707070),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Full Rim Round, Cat-eyed Anti Glare Frame(48 mm)",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF707070),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage("assets/icons/rupee-indian.png"),
                            height: 15,
                            width: 15,
                          ),
                          Text(
                            " 219",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            " \$999",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 20,
                              color: Color(0xFF5E5E5E),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            " 78% off",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF6FC373),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 70,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    spreadRadius: 6,
                    blurRadius: 6,
                    color: Colors.grey,
                  )
                ]),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Center(
                          child: Text(
                        "ADD TO CART",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      color: Color(0xFFF3AA4E),
                      child: Center(
                          child: Text(
                        "BUY NOW",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 60,
              right: 20,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image(
                          image: AssetImage(
                              "assets/icons/Icon ionic-ios-heart.png")),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image(
                          image:
                              AssetImage("assets/icons/Icon awesome-share.png")),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
