import 'package:flutter/material.dart';

class EscuchadorInterno extends StatefulWidget {
  final Function(String) onUpdate;

  const EscuchadorInterno({Key key, this.onUpdate}) : super(key: key);
  @override
  _EscuchadorInternoState createState() => _EscuchadorInternoState();
}

class _EscuchadorInternoState extends State<EscuchadorInterno> {

  bool valueCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        value: valueCheckbox,
        onChanged: (bool value) {
          setState(() {
            if (value) {
              widget.onUpdate("on");
            } else {
              widget.onUpdate("off");
            }
          });
        },
      ),
    );
  }

}



