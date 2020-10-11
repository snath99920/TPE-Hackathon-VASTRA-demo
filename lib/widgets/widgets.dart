import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return Container(
    child: CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.white,
      // child: Image.asset(
      //   'assets/icon/U.png',
      //   height: 35,
      // ),
    ),
  );
}

Widget appBarSignOut(BuildContext context) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 25.0,
          backgroundColor: Colors.white,
          // child: Image.asset(
          //   'assets/icon/U.png',
          //   height: 35,
          //   // alignment: Alignment.centerRight,
          // ),
        ),
      ],
    ),
  );
}

Widget appBarNoIcon(BuildContext context) {
  return Container();
}

Widget blueButton({BuildContext context, String label, buttonWidth}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
      color: new Color(0xff6bccf3),
      borderRadius: BorderRadius.circular(30),
    ),
    alignment: Alignment.center,
    width: buttonWidth != null
        ? buttonWidth
        : MediaQuery.of(context).size.width - 48,
    child: Text(
      label,
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}
