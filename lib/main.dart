import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Specialist(),
    );
  }
}

class Specialist extends StatefulWidget {
  @override
  _SpecialistState createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            //color: Colors.grey[100],
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 3,
                              width: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Color(0xFF758198),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 3,
                              width: 15,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Color(0xFF758198),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          // Container(
                          //     height: 35,
                          //     width:35,
                          //     child: Image(image: AssetImage("assets/images/doctor.png"),)),
                          decoration: BoxDecoration(
                            color: Color(0xFF9ED5DE),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image(
                                  image:
                                      AssetImage("assets/images/doctor2.png"),
                                  width: 25,
                                  height: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Jane",
                          style: TextStyle(
                              color: Color(0xFF344766),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Find Your Specialist",
                          style: TextStyle(
                              color: Color(0xFF344766),
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Color(0xFFE6E8EA),
                            ),
                            onPressed: () {},
                          ),
                          Text(
                            "Search doctor",
                            style: TextStyle(color: Color(0xFFE6E8EA)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFF9FD5DC),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF9FD5DC),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: IconButton(
                        icon: Icon(
                          Icons.vertical_align_center_outlined,
                          color: Color(0xFFFFFFFF),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Horizontalboxes(
                      color: Color(0xFF8DB4DB),
                      shadowcolor: Color(0xFF8DB4DB),
                      img: "assets/images/heart.png",
                      name: "Cardiology",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Horizontalboxes(
                      color: Color(0xFF94D3DA),
                      shadowcolor: Color(0xFF94D3DA),
                      img: "assets/images/heart.png",
                      name: "Gastrology",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Horizontalboxes(
                      color: Color(0xFFF2C6A9),
                      shadowcolor: Color(0xFFF2C6A9),
                      img: "assets/images/heart.png",
                      name: "Neurology",
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Top Doctor",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF344766),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF94D3DA),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                VerticalBoxes(
                  color: Color(0xFFF3BB76),
                  image: "assets/images/doctor3.png",
                  name: "Prof. Dr. Kevin Williams",
                ),
                SizedBox(
                  height: 15,
                ),
                VerticalBoxes(
                  color: Color(0xFFF2C6A9),
                  image: "assets/images/doctor1.png",
                  name: "Dr. Jane Foster",
                ),
                SizedBox(
                  height: 15,
                ),
                VerticalBoxes(
                  color: Color(0xFF94D3DA),
                  image: "assets/images/doctor3.png",
                  name: "Tommy Smith",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VerticalBoxes extends StatelessWidget {
  const VerticalBoxes({
    this.color,
    this.image,
    this.name,
    Key key,
  }) : super(key: key);
  final Color color;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 400,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                        //borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image(
                                image: AssetImage(image),
                                width: 30,
                                height: 35,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Color(0xFF4C5C79),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Heart Surgeon - United hospital",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Color(0xFFA7EFF0),
                      size: 12,
                    ),
                    Text(
                      "10.40 AM - 2.40 PM",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.money_off,
                          color: Colors.grey,
                          size: 12,
                        ),
                        Text(
                          "10.50",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    //SizedBox(width: 20,),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xFFADDBE1),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFADDBE1),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                              child: Text(
                            "Appointment",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Horizontalboxes extends StatelessWidget {
  const Horizontalboxes({
    this.color,
    this.shadowcolor,
    this.img,
    this.name,
    Key key,
  }) : super(key: key);
  final Color color;
  final Color shadowcolor;
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: shadowcolor,
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 5),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage(img),
                color: Colors.white,
                fit: BoxFit.fitWidth,
              )),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
