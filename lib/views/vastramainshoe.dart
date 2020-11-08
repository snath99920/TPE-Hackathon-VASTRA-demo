import 'package:flutter/material.dart';
import 'package:myapp/views/vastraanalyze.dart';
import 'package:myapp/views/vastraanalyzeshoe.dart';
import 'package:myapp/views/vastramainnew.dart';
import 'package:myapp/widgets/widgets.dart';

class VastraMainShoe extends StatefulWidget {
  @override
  _VastraMainShoeState createState() => _VastraMainShoeState();
}

class _VastraMainShoeState extends State<VastraMainShoe> {
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
          children: [
            Container(
              child: Image.asset("assets/images/acin1.png"),
              height: height,
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VastraAnalyzeShoe()));
                  },
                  child: Container(
                    height: 50,
                    width: width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "VASTRA ANALYZE",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VastraMainNew()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "UPLOAD A NEW IMAGE",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(Icons.camera),
                        // SizedBox(
                        //   width: 20.0,
                        // ),
                        Text(
                          "END TRIAL",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      // border: Border.all(
                      //   color: Colors.grey[300],
                      // ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
