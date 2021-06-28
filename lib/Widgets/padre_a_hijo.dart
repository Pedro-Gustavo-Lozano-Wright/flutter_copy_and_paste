String padre_a_hijo = """import 'package:flutter/material.dart';

class Padre_a_hijo extends StatefulWidget {
  final String info;
  const Padre_a_hijo({Key key, this.info}) : super(key: key);

  @override
  _Padre_a_hijoState createState() => _Padre_a_hijoState();
}

class _Padre_a_hijoState extends State<Padre_a_hijo> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(body: Center(child: Text(widget.info)),));
  }
}

//ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Padre_a_hijo(info: "info",)),);}, child: Text("f")),
""";