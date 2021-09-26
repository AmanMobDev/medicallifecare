import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:medicallifecare/Utils/CustomColors.dart';

import 'AboutUs.dart';
import 'ContactUs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/Home.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 150.0,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.backGroundColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>AboutUsScreen()));
                    },
                    child: Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.backGroundColor,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 50.0,
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ContactUsScreen()));
                    },
                    child: Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.backGroundColor,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 100.0,
                  ),

                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "MEDICAL LIFE CARE",
                        textStyle: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.backGroundColor,
                        ),
                        speed: const Duration(milliseconds: 500),
                      ),

                    ],
                    isRepeatingAnimation: true,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Deals in: All Medical items Sales & Service",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.backGroundColor,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.green,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 5.0,
        child: Icon(
          Icons.arrow_forward,
          color: CustomColors.white,
        ),
      ),
    );
  }
}
