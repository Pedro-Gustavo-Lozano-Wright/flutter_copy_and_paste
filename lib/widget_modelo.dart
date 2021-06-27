import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget cube({Widget widIn, String patImg = "", String copyPst = ""} ) {
  return Container(
    padding: EdgeInsets.all(4),
    child: Center(
      child: Container(
        height: 50,
        width: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0), primary: Colors.white,side: BorderSide(width: 1.0, color: Colors.black)),
          onPressed: () {
            //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("texto info"),duration: Duration(seconds: 5)));
            Clipboard.setData(ClipboardData(text: copyPst));
            },
          child: widIn != null ? widIn : Image.asset("images/" + patImg + ".png", fit: BoxFit.fill),
        ),
      ),
    ),
  );
}
