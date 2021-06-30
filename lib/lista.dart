import 'package:flutter/material.dart';

import 'Widgets/boton_de_regreso_en_menu.dart';
import 'Widgets/dialogos.dart';
import 'Widgets/distribucion.dart';
import 'Widgets/gestures.dart';
import 'Widgets/hijo_a_padre.dart';
import 'Widgets/lista_de_opciones.dart';
import 'Widgets/padre_a_hijo.dart';
import 'Widgets/pestana_emergente.dart';
import 'Widgets/pestana_emergente_compacta.dart';
import 'Widgets/redimencion_de_imagen.dart';
import 'Widgets/sub_listas_desplegable.dart';
import 'Widgets/wid_edit_a_b_c.dart';
import 'Widgets/widgets1.dart';
import 'Widgets/widget_o_statefull_con_escuchador_interno.dart';

// widget, nombre de imagen, txto de codigo
List<List<dynamic>> list = [
  [null, "saltar_pantalla", codigo_saltar_pantalla],
  [null, "mensaje_snack", codigo_de_showSnackBar],
  [null, "pestalla_emergente", pestanaEmergente],
  [null, "pestalla_emergente_compacta", pestanaEmergenteCompacta],
  [null, "menu_de_opciones_desplegable", listaDeOpciones],
  [null, "sub_lista_desplegable", sub_lista_desplegable],
  [null, "enviar_info_a_widget_padre", enviar_info_a_widget_padre],
  [null, "wid_edit_a_b_c", wid_edit_a_b_c],
  [null, "wid_edit_tag_preference", wid_edit_tag_preference],
  [null, "wid_find_word", wid_find_word],
  [null, "show_alert_dialog", show_alert_dialog],
  [null, "wid_show_word", wid_show_word],
  [null, "distribucion", distribucion],
  [null, "gestures", gestures],
  [null, "redimencion_de_imagen", redimencion_de_imagen],
  [null, "shared_preferences", shared_preferences],
  [null, "padre_a_hijo", padre_a_hijo],
  [null, "info_de_regreso_en_pantalla", info_de_regreso_en_pantalla],
  [null, "boton_regreso_ios", boton_regreso_ios],

  //[Container(child: Icon(Icons.brightness_1,color: Colors.red,)), "","color" ],
];
