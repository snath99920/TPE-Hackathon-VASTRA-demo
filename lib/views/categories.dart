import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:myapp/views/productdescription.dart';
import 'package:myapp/views/shoedesc.dart';
import 'package:myapp/widgets/widgets.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // Widget image_carousel = new Container(
  //   height: 250,
  //   child: new Carousel(
  //     // moveIndicatorFromBottom: 1.0,
  //     boxFit: BoxFit.cover,
  //     images: [
  //       Container(
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(5.0),
  //         ),
  //         child: Image.asset(
  //           'assets/images/p3.jpeg',
  //           // height: 20,
  //           // width: 60,
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //       Container(
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(5.0),
  //         ),
  //         child: Image.asset(
  //           'assets/images/p2.jpg',
  //           // height: 20,
  //           // width: 60,
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //       ClipRRect(
  //         // decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(5.0),
  //         // ),
  //         child: Image.asset(
  //           'assets/images/p1.jpeg',
  //           // height: 50,
  //           // width: 50,
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //     ],
  //     borderRadius: true,
  //     autoplay: true,
  //     animationCurve: Curves.fastOutSlowIn,
  //     animationDuration: Duration(
  //       milliseconds: 1000,
  //     ),
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            // Text(
            //   "Footwear",
            //   style: TextStyle(
            //     color: Colors.grey,
            //     fontSize: 37.0,
            //   ),
            //   textAlign: TextAlign.start,
            // ),
            // image_carousel,
            // SizedBox(
            //   height: height * 0.01,
            // ),
            // Card(
            //   // elevation: 3.0,
            //   color: Colors.white,
            //   // child: Padding(
            //   // padding: EdgeInsets.all(8.0),
            //   child: Container(
            //     width: width,
            //     child: Image.asset(
            //       'assets/images/top.jpg',
            //       // height: 00,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: height * 0.01,
            // ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoeDescription()));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Container(
                        width: width * 0.45,
                        height: 250,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, left: 5.0, right: 5.0),
                              child: Image.asset(
                                'assets/images/acp1.jpeg',
                                height: 245,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              height: 50,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "Running Shoes",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "Rs 499",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    color: Colors.white,
                    child: Container(
                      width: width * 0.45,
                      height: 250,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, left: 5.0, right: 5.0),
                                child: Image.asset(
                                  'assets/images/acpo1.png',
                                  height: 110,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            color: Colors.white,
                            height: 50,
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Blue, Sandal",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Rs 429",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDescription()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      color: Colors.white,
                      child: Container(
                        width: width * 0.45,
                        height: 250,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, left: 5.0, right: 5.0),
                              child: Image.asset(
                                'assets/images/m4.jpeg',
                                height: 245,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              height: 50,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "Casual Petal",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "Rs 349",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    color: Colors.white,
                    child: Container(
                      width: width * 0.45,
                      height: 250,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5.0),
                            child: Image.asset(
                              'assets/images/m2.jpeg',
                              height: 245,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            height: 50,
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Solid, Hooded",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Rs 799",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              ".....",
              style: TextStyle(fontSize: 25.0, color: Colors.grey[400]),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "\" That's all folks..!\"",
              style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
