String listaDeOpciones =
"""
import 'package:flutter/material.dart';

Widget listaDeOpciones(){
  return Container(
    //color: Colors.white,
    width: 90, height:  40,
    child: ListTile(
      leading: Container(child: Icon(Icons.color_lens, color: Colors.black)),
      trailing: DropdownButton<int>(
        onChanged: (int newValue) {
        },
        items: [
          DropdownMenuItem(
            value: 0,
            child: Container(child: Icon(Icons.color_lens, color: Colors.black)),
          ),
          DropdownMenuItem(
            value: 1,
            child: Container(child: Icon(Icons.color_lens, color: Colors.red)),
          ),
          DropdownMenuItem(
            value: 2,
            child: Container(child: Icon(Icons.color_lens, color: Colors.pink)),
          ),
          DropdownMenuItem(
            value: 3,
            child: Container(child: Icon(Icons.color_lens, color: Colors.purple)),
          ),
          DropdownMenuItem(
            value: 4,
            child: Container(child: Icon(Icons.color_lens, color: Colors.indigo)),
          ),
          DropdownMenuItem(
            value: 5,
            child: Container(child: Icon(Icons.color_lens, color: Colors.blue)),
          ),
          DropdownMenuItem(
            value: 6,
            child: Container(child: Icon(Icons.color_lens, color: Colors.cyan)),
          ),
          DropdownMenuItem(
            value: 7,
            child: Container(child: Icon(Icons.color_lens, color: Colors.teal)),
          ),
          DropdownMenuItem(
            value: 8,
            child: Container(child: Icon(Icons.color_lens, color: Colors.green)),
          ),
          DropdownMenuItem(
            value: 9,
            child: Container(child: Icon(Icons.color_lens, color: Colors.yellow)),
          ),
          DropdownMenuItem(
            value: 10,
            child: Container(child: Icon(Icons.color_lens, color: Colors.amber)),
          ),
          DropdownMenuItem(
            value: 11,
            child: Container(child: Icon(Icons.color_lens, color: Colors.orange)),
          ),
          DropdownMenuItem(
            value: 12,
            child: Container(child: Icon(Icons.color_lens, color: Colors.blueGrey)),
          ),
        ],
      ),
    ),
  );
}""";