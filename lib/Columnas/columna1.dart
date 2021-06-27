import 'package:flutter/material.dart';

import '../widget_modelo.dart';
import 'copy_paste.dart';

Widget columna1(){

  return Container(
    child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext ctxt, int id) {
          return cube(widIn: list[id][0], patImg: list[id][1], copyPst: list[id][2],);
          //cube(null, "t_mensaje_rapido", copyPst:"porta papeles", );
        }
    ),
  );
}