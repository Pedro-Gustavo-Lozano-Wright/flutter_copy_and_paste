import 'package:flutter/material.dart';

import '../Widgets/lista_de_opciones.dart';
/// widget, nombre de imagen, txto de codigo
List<List<dynamic>> list = [
  [null, "saltar_pantalla",codigo_saltar_pantalla],
  [null, "t_mensaje_rapido",codigo_de_showSnackBar],
  [null, "menu_inferior","inferior" ],
  [Container(child: Icon(Icons.brightness_1,color: Colors.red,)), "","color" ],
  [null, "menu_desplegable","menu_desplegable" ],
  [null, "sub_lista_desplegable","sub_lista_desplegable" ],
  [null, "pestalla_emergente","PestallaEmergente" ],
  [null, "pestalla_emergente_compacta","PestallaEmergenteCompacta" ],
];

const String t_giro_de_pantalla = 'SystemChrome.setPreferredOrientations([ DeviceOrientation.portraitUp]);';
const String codigo_de_showSnackBar = 'ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("algo de texto"),duration: Duration(seconds: 5)));';
const String codigo_saltar_pantalla =
'''
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pantalla()),
                );
    ''';

