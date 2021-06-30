String boton_regreso_ios =
"""
import 'package:flutter/material.dart';

class WillPopScopeDemo extends StatelessWidget {
  DateTime currentBackPressTime;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("regreso");
      },
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: Text("WillPopScope Demo")),
        body: Center(
          child: Text("Tap back button to leave this page"),
        ),
      ),
    );
  }
}
""";