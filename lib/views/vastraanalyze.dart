import 'package:flutter/material.dart';
import 'package:myapp/widgets/widgets.dart';

class VastraAnalyze extends StatefulWidget {
  @override
  _VastraAnalyzeState createState() => _VastraAnalyzeState();
}

class _VastraAnalyzeState extends State<VastraAnalyze> {
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
              child: Image.asset(
                "assets/images/analyze.jpeg",
                height: height,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: width * 0.85,
                      color: Colors.redAccent,
                      alignment: Alignment.center,
                      child: Text(
                        "END ANALYSIS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
