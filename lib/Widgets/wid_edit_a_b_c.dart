String wid_edit_a_b_c =
"""
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget wid_edit_A_B_C_card(int id_de_lista_a_mostrar_en_pages, BuildContext context){
  List lista_items_card = ["a", "b","v", "A", "r", "e"];
  String new_text_a_card = "";
  String new_text_b_card = "";
  String new_text_c_card = "";
  final Color fondo =  Colors.indigo[100];

  var texcontrol_1 = TextEditingController();
  var texcontrol_2 = TextEditingController();
  var texcontrol_3 = TextEditingController();

  Future.delayed(const Duration(milliseconds: 200), () {
    texcontrol_1.text = lista_items_card[1];
    texcontrol_2.text = lista_items_card[2];
    texcontrol_3.text = lista_items_card[3];
  });


  return Container(child: Container(
    child: TextButton(
      child: Container(height: 20, width: 20,child: Icon(Icons.edit, size: 17,color: Colors.grey )),
      onPressed: () {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => SimpleDialog(title: Container(width: 230,child: Stack(
            children: <Widget>[

              Transform.translate(offset: Offset(115, 25),child: Container(color: fondo, height: 250 ,width: 150, ),),             //der abajo
              Transform.translate(offset: Offset(115, -25),child: Container(color: fondo, height: 50 ,width: 150, ),),
              Transform.translate(offset: Offset(-35, 25),child: Container(color: fondo, height: 250 ,width: 150, ),), //isq abajo
              Transform.translate(offset: Offset(-35, -25),child: Container(color: fondo, height: 50 ,width: 150, ),),

              Row(
                children: <Widget>[
                  Expanded(child: Container(),flex: 1,),
                  Transform.translate(offset: Offset(0, -15), child: Container(child: Text("Edit card - ID: 0" ),),),
                  Expanded(child: Container(),flex: 1,),                  ],
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(height: 6,),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(height: 34, width: 60,
                            child: TextButton(
                              child: Text("Reset",style: TextStyle(color: Colors.deepPurple[300]),),
                              onPressed: () {

                                Navigator.pop(context);

                              },),
                          ),
                          Expanded(child: Container(),flex: 1,),
                          Container(height: 34, width: 60,
                            child: TextButton(
                              child: Text("Default",style: TextStyle(color: Colors.deepPurple[300]),),
                              onPressed: () {

                                Navigator.pop(context);

                              },),
                          ),
                          Expanded(child: Container(),flex: 1,),
                          Container(height: 34, width: 60,
                            child: TextButton(
                              child: Text("Delete",style: TextStyle(color: Colors.deepPurple[300]),),
                              onPressed: () {

                                Navigator.pop(context);

                              },),
                          )
                        ],
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(height: 73, child: Container(width: 300, height: 73,child:
                        TextField(controller: texcontrol_1, maxLines: 2, toolbarOptions: ToolbarOptions(cut: false, paste: true,selectAll: true, copy: true),
                          onChanged: (String val) {
                            new_text_a_card = val;
                          },style: TextStyle(color: Colors.grey[300]),), ),),
                      ],
                    ),
                    Transform.translate(offset: Offset(0, -10), child: Container(height: 73, child: Container(width: 300, height: 73,child:
                    TextField(controller: texcontrol_2,  maxLines: 2, toolbarOptions: ToolbarOptions(cut: false, paste: true,selectAll: true, copy: true),
                      onChanged: (String val) {
                        new_text_b_card = val;
                      },style: TextStyle(color: Colors.grey[300]),),),),),
                    Transform.translate(offset: Offset(0, -20), child: Container(height: 73, child: Container(width: 300, height: 73,child:
                    TextField(controller: texcontrol_3, decoration: InputDecoration(hintText: "Help information", ), maxLines: 2, toolbarOptions: ToolbarOptions(cut: false, paste: true,selectAll: true, copy: true),
                      onChanged: (String val) {
                        new_text_c_card = val;
                      },style: TextStyle(color: Colors.grey[300]),),),),),
                    Container(height: 14,),
                  ],
                ),
              ),
              Transform.translate(offset: Offset(0, 230), child: Row(
                children: <Widget>[
                  Container( height: 40,margin: EdgeInsets.only(bottom: 10),
                    child: TextButton(
                      child: Row(
                        children: <Widget>[
                          Text("Discard ", style: TextStyle(color: Colors.grey, ),),
                          Icon(Icons.clear, size: 17,color: Colors.grey,),
                        ],
                      ),
                      onPressed: () {

                        Navigator.pop(context);

                      },),
                  ),
                  Expanded(child: Container(),flex: 1,),

                  Container( height: 40,margin: EdgeInsets.only(bottom: 10),
                    child: TextButton(
                      child: Row(
                        children: <Widget>[
                          Text("Save", style: TextStyle(color: Colors.green, ),),
                          Icon(Icons.check_circle, size: 17,color: Colors.green,),
                        ],
                      ),
                      onPressed: () {

                        int cambios_en_card = 0;

                        if(new_text_a_card == ""){
                          print("no cambio a");
                        }else{
                          cambios_en_card = 1;
                        }
                        if(new_text_b_card == ""){
                          print("no cambio b");
                        }else{
                          cambios_en_card = 1;
                        }
                        if(new_text_c_card == ""){
                          print("no cambio c");
                        }else{
                          cambios_en_card = 1;
                        }

                      },),
                  ),
                ],
              ),),
              Container(child: Transform.translate(offset: Offset(165, 88), child:

              Container(color: fondo, width: 70,
                child: Row(
                  children: [
                    Container(width: 25, height: 25,child: TextButton(child: Icon(Icons.content_copy, size: 18, color: Colors.grey,),
                      onPressed: (){
                        Clipboard.setData(new ClipboardData(text: lista_items_card[1]));
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Text copied, to copy all long press"),duration: Duration(seconds: 5)));
                      },
                      onLongPress: (){
                        Clipboard.setData(new ClipboardData(text: lista_items_card[1] + "  " + lista_items_card[2] + "  " + lista_items_card[3]));
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("All text copied"),duration: Duration(seconds: 5)));
                      },)),
                    Container(width: 25, height: 25,
                        child: TextButton(child: Icon(Icons.volume_up, size: 18, color: Colors.grey,), onPressed: (){
                          //set_language();
                          //if(new_text_a_card== ""){speak(lista_items_card[1].toString());}else {speak(new_text_a_card);}//new_text_a_card
                        },
                          //onLongPress: (){set_language_low();if(new_text_a_card== ""){speak(lista_items_card[1].toString());}else {speak(new_text_a_card);};},//todokjh

                        )),
                  ],
                ),
              ))),


            ],
          ),),),
        );

      },
    ),
  ),);
}

//  wid_edit_A_B_C_card(1,context),

""";