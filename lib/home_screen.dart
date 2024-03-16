import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff020202),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            fit: StackFit.passthrough,
            clipBehavior: Clip.none,
            children: [
              Container(
                foregroundDecoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black54,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black54
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.5, 0.84, 0.94],
                  ),
                ),
                child: Image.asset(
                  'assets/video.jpg',
                  fit: BoxFit.fitWidth,
                  height: height * 0.52,
                  width: double.infinity,
                ),
              ),
              Positioned(
                  top: height * 0.084,
                  left: width * 0.2,
                  right: 0,
                  bottom: 0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Stroll Bonfire',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            shadows: const <Shadow>[
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 0.1,
                                color: Colors.black38,
                              ),
                            ],
                            fontSize: height * 0.038,
                            color: const Color(0xffCCC8FF)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.016, left: width * 0.01),
                        child: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xffCCC8FF),
                        ),
                      )
                    ],
                  )),
              Positioned(
                  top: height * 0.136,
                  left: width * 0.32,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.001, right: width * 0.01),
                        child: Icon(
                          Icons.timer_sharp,
                          size: height * 0.02,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${DateTime.now().hour.toString()}h ${DateTime.now().minute.toString()}m',
                        style: const TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.000,
                            left: width * 0.04,
                            right: width * 0.01),
                        child: Icon(
                          Icons.person,
                          size: height * 0.024,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        '103',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
              Positioned(
                top: height * 0.47,
                left: width * 0.09,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: height * 0.036,
                      child: CircleAvatar(
                        radius: height * 0.03,
                        backgroundImage: const NetworkImage(
                            'https://onecms-res.cloudinary.com/image/upload/s--9XBUCJmC--/c_crop,h_3958,w_3958,x_695,y_666/c_fill,g_auto,h_385,w_291/f_auto,q_auto/v1/mediacorp/corporate/image/2022/08/08/denise_camillia_tan_chenchuhuan_2.jpg?itok=s8ZIn2OG'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.02, top: height * 0.008),
                      child: Text('Angelina , 28',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: height * 0.014,
                          )),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: height * 0.51,
                left: width * 0.28,
                child: Container(
                  width: width * 0.64,
                  child: Text('What is your favorite time of the day?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: height * 0.024,
                      )),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.08, left: width * 0.2, bottom: width * 0.06),
            child: Text(' "Mine is definitely the peace in the morning." ',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff8E8DB2),
                  fontSize: height * 0.014,
                )),
          ),
          const Row(
            children: [OptionCard(), OptionCard()],
          ),
          SizedBox(
            height: height * 0.018,
          ),
          const Row(
            children: [OptionCard(), OptionCard()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.06, top: height * 0.03),
                child: const Text(
                  "Pick your option.\nSee who has a similar mind.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.026),
                    child: CircleAvatar(
                      backgroundColor: Color(0xff8D88EF),
                      radius: height * 0.028,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: height * 0.024,
                        child: Icon(
                          Icons.mic,
                          color: Color(0xff8D88EF),
                          size: height * 0.042,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.026,
                        left: width * 0.02,
                        right: width * 0.06),
                    child: CircleAvatar(
                      backgroundColor: Color(0xff8D88EF),
                      radius: height * 0.028,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff8D88EF),
                        radius: height * 0.024,
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.black,
                          size: height * 0.042,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          showUnselectedLabels: true,
          unselectedFontSize: 4,
          selectedFontSize: 4,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Image.asset(
                  "assets/Card.jpg",
                  height: height * 0.06,
                ),
                activeIcon: Image.asset(
                  "assets/Card.jpg",
                  // color: Color(0xff6F6E7C),
                  height: height * 0.06,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Image.asset(
                  "assets/bonfire.jpg",
                  height: height * 0.06,
                ),
                activeIcon: Image.asset(
                  "assets/bonfire.jpg",
                  height: height * 0.06,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Image.asset(
                  "assets/Chat.jpg",
                  height: height * 0.06,
                ),
                activeIcon: Image.asset(
                  "assets/Chat.jpg",
                  height: height * 0.06,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Image.asset(
                  "assets/User.jpg",
                  height: height * 0.06,
                ),
                activeIcon: Image.asset(
                  "assets/User.jpg",
                  height: height * 0.06,
                ),
                label: ''),
          ]),
    );
  }
}

class OptionCard extends StatelessWidget {
  const OptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.04),
      child: Container(
        width: width * 0.438,
        decoration: const BoxDecoration(
            color: Color(0xff232A2E),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: EdgeInsets.only(
              left: width * 0.02, top: height * 0.02, bottom: height * 0.02),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.006),
                child: CircleAvatar(
                  radius: height * 0.016,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: height * 0.014,
                    backgroundColor: Color(0xff232A2E),
                    child: const Text(
                      'A',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.0, left: width * 0.019),
                child: Container(
                  width: width * 0.32,
                  child: Text('The peace in the early mornings ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.016,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
