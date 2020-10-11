import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/bottomnavbar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => (Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MyCustomBottomNavigationBar()))));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // gradient: LinearGradient(
              //   colors: [
              //     new Color(0xff29dfb7),
              //     new Color(0xff3ec7fd),
              //   ],
              //   begin: Alignment.bottomRight,
              //   end: Alignment.topLeft,
              // ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75.0,
                child: Image.asset(
                  'assets/icon/icon.png',
                  height: 80.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              // Text(
              //   "Vastra",
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 30.0,
              //       fontWeight: FontWeight.w500),
              // ),
              Spacer(),
              Text(
                "Made with love in India",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
