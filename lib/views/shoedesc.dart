import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/views/vastramain.dart';
import 'package:myapp/views/vastramainshoe.dart';
import 'package:myapp/widgets/widgets.dart';

class ShoeDescription extends StatefulWidget {
  @override
  _ShoeDescriptionState createState() => _ShoeDescriptionState();
}

class _ShoeDescriptionState extends State<ShoeDescription> {
  Widget image_carousel = new Container(
    height: 450,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Image.asset(
            'assets/images/acp1.jpeg',
            // height: 100,
            // fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Image.asset(
            'assets/images/acp2.jpeg',
            // fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Image.asset(
            'assets/images/acp3.jpeg',
            // fit: BoxFit.cover,
          ),
        ),
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(5.0),
        //   ),
        //   child: Image.asset(
        //     'assets/images/m43.jpeg',
        //     // fit: BoxFit.cover,
        //   ),
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(5.0),
        //   ),
        //   child: Image.asset(
        //     'assets/images/m44.jpeg',
        //     // fit: BoxFit.fitHeight,
        //   ),
        // ),
      ],
      borderRadius: true,
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(
        milliseconds: 1000,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    _uploadAlert(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                title: Text(
                  "Upload Image",
                  style: TextStyle(color: Colors.green),
                ),
                content: Container(
                  height: 100.0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VastraMainShoe()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[300],
                                ),
                              ),
                              height: 100,
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.photo_camera),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Click a picture",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VastraMainShoe()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[300],
                                ),
                              ),
                              height: 100,
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.photo_library),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Upload a photo",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          });
    }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
            image_carousel,
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: width,
                  // color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hangup  ",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "Sherwani, gold (Men)",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            "Rs 7349  ",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "Rs 14099 ",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16.0,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                          Text(
                            "   (47% off)",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Colors.orange,
                                fontSize: 16.0,
                                // decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: width,
                  // color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "PRODUCT DESCRIPTION",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Indian party wear for men. All the comfort you need while looking fabulous.",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: width,
                  // color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: width * 0.45,
                            height: 50,
                            // color: Colors.white,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "WISHLIST",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: width * 0.45,
                            height: 50,
                            // color: Colors.white,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              // border: Border.all(color: Colors.grey[300]),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_basket,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "ADD TO BAG",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _uploadAlert(context);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => VastraMain()));
                            },
                            child: Container(
                              width: width * 0.92,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.green,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "TRY THIS OUTFIT WITH VASTRA!",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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

class OptionTile {}
