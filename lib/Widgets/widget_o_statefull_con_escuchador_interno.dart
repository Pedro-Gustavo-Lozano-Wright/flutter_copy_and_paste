String enviar_info_a_widget_padre =
"""
import 'package:flutter/material.dart';

class EscuchadorInterno extends StatefulWidget {
  final Function(String) onUpdate;

  const EscuchadorInterno({Key key, this.onUpdate}) : super(key: key);
  @override
  _EscuchadorInternoState createState() => _EscuchadorInternoState();
}

class _EscuchadorInternoState extends State<EscuchadorInterno> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        onChanged: (texto) {
          widget.onUpdate(texto);
        },
      ),
    );
  }
}
//EscuchadorInterno(onUpdate: (text){print(text)},),
""";
