import 'package:flutter/material.dart';

class NaviGetData extends StatefulWidget {
  @override
  _NaviGetDataState createState() => _NaviGetDataState();
}

class _NaviGetDataState extends State<NaviGetData> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text("First Screen")),
      body: Center(
        child: ElevatedButton(
          child: Text("Launch Screen"),
          onPressed: () {
            receiveData(context);
          },
        ),
      ),
    );
  }

  receiveData(BuildContext context) async {
    String result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => NaviReturnData()));
    print("Received Data: $result");
  }
}

class NaviReturnData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: ElevatedButton(
        child: Text("info de regreso"),
        onPressed: (){Navigator.pop(context, "info de regreso");},
      ),
    );
  }
}