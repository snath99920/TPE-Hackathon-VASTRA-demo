import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget image_carousel = new Container(
    height: 250,
    child: new Carousel(
      // moveIndicatorFromBottom: 1.0,
      boxFit: BoxFit.cover,
      images: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Image.asset(
            'assets/images/p3.jpg',
            // height: 20,
            // width: 60,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Image.asset(
            'assets/images/p2.jpg',
            // height: 20,
            // width: 60,
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          // decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          // ),
          child: Image.asset(
            'assets/images/p1.jpg',
            // height: 50,
            // width: 50,
            fit: BoxFit.cover,
          ),
        ),
      ],
      borderRadius: true,
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(
        milliseconds: 1000,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.white,
        elevation: 0.8,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black54),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            image_carousel,
          ],
        ),
      ),
    );
  }
}
