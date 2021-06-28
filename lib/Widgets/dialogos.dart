

String wid_show_word =
"""
  wid_show_word(String stri_show_word){
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => SimpleDialog(title: Container(height: 270,child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Transform.translate(offset: Offset(87, -10), child: Container(child: Text("gus"),)),
              Container(width: 220, height: 250,
                child: ListView(
                  children: <Widget>[
                    Transform.translate(offset: Offset(0, 15), child: Text(stri_show_word ,style: TextStyle(fontSize: 13),)),
                  ],
                ),
              ),
              Transform.translate(offset: Offset(190, 215), child: Container(color: Colors.white,width: 30, height: 30,
                child: TextButton(
                  child: Icon(Icons.clear, size: 17,color: Colors.red,),
                  onPressed: () {
                    Navigator.pop(context);
                  },),
              ),
              ),
            ],
          ),
        ],
      ),),),
    );
  }
  //wid_show_word("text");
  """;


String show_alert_dialog =
"""
  void showAlertDialog(BuildContext context) async {
    String result = await showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Demo'),
          content: Text("Select button you want"),
          actions: <Widget>[
            ElevatedButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context, "OK");
              },
            ),
            ElevatedButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, "Cancel");
              },
            ),
          ],
        );
      },
    );
  }
""";

String wid_find_word =
"""
  wid_find_word(){
    final Color fondo =  Colors.indigo[100];
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => SimpleDialog(title: Container(height: 70,child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Transform.translate(offset: Offset(115, 25),child: Container(color: fondo, height: 50 ,width: 150, ),),             //der abajo
              Transform.translate(offset: Offset(115, -25),child: Container(color: fondo, height: 50 ,width: 150, ),),
              Transform.translate(offset: Offset(-35, 25),child: Container(color: fondo, height: 50 ,width: 150, ),), //isq abajo
              Transform.translate(offset: Offset(-35, -25),child: Container(color: fondo, height: 50 ,width: 150, ),),
              Transform.translate(offset: Offset(50, -10), child: Container(child: Text("Find word or ID"),)),

              Row(
                children: <Widget>[
                  Container(height: 50, child: Container(width: 200, height: 60,child: TextField(decoration: InputDecoration(hintText: "writes a word or ID", ),style: TextStyle(color: Colors.grey), onSubmitted: (String val) {
                    
                    Navigator.pop(context);

                  },onChanged: (String val) {

                  },), padding: EdgeInsets.only(bottom: 10),),),

                  Container(width: 2),
                  Container(width: 30, height: 30,
                      child: TextButton(
                          child: Icon(Icons.check_circle, size: 17,color: Colors.green,),
                          onPressed: () {    }

                      )

                  ),

                ],
              ),
            ],
          ),

        ],
      ),),),
    );
  }

// wid_find_word();
""";

String wid_edit_tag_preference =
"""
  wid_edit_tag_preference(int numero_tag){

    String text_tag_guardar = "";
    return Container(child: Container(height: 25, width: 30,
      child: TextButton(
        child: Container(height: 20, width: 20,child: Transform.translate(offset: Offset(0,-2),child: Icon(Icons.edit, size: 14,color: Colors.grey, ),)),
        onPressed: () {

          text_tag_guardar = "asd";

          showDialog<String>(
            context: context,
            builder: (BuildContext context) => SimpleDialog(title: Container(child: Column(
              children: <Widget>[
                Container(height: 50,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(child: Text("Edit Tag " + numero_tag.toString() + " "),),
                      Container(width: 30, height: 30,
                        child: TextButton(
                          child: Icon(Icons.check_circle, size: 17,color: Colors.green,),
                          onPressed: () {

                            setState(() {

                            });

                            Navigator.pop(context);

                          },),
                      ), Container(width: 30, height: 30,
                        child: TextButton(
                          child: Icon(Icons.clear, size: 17,color: Colors.red,),
                          onPressed: () {

                            Navigator.pop(context);

                          },),
                      ),
                    ],
                  ),
                ),
                Container(height: 50, child: Container(width: 170, height: 60,child: TextField(decoration: InputDecoration(hintText: text_tag_guardar),maxLength: 15, onSubmitted: (String val) {


                  setState(() {

                  });

                  //Navigator.pop(context);

                },onChanged: (String val) {
                  text_tag_guardar = val;
                },), padding: EdgeInsets.only(bottom: 10),),),
              ],
            ),),),
          );

        },
      ),
    ),);
  }
  
  //wid_edit_tag_preference(5),

""";
