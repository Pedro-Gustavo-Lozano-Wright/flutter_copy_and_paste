
String sub_lista_desplegable =
"""
import 'package:flutter/material.dart';

Widget sub_lista_desplegable() {
  return Container(
      width: 300,
      height: 400,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index]),
        itemCount: data.length,
      )
  );
}


class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

const List<Entry> data = <Entry>[
  Entry('Titulo 1',
    <Entry>[
      Entry('-Titulo 1.1',
        <Entry>[
          Entry('--Titulo 1.1.1'),
          Entry('--Titulo 1.1.2'),
          Entry('--Titulo 1.1.3',
            <Entry>[
              Entry('---Titulo 1.1.3.1'),
              Entry('---Titulo 1.1.3.2'),
            ],
          ),
        ],
      ),
      Entry('-Titulo 1.2'),
      Entry('-Titulo 1.3'),
    ],
  ),
  Entry('Titulo 2',
    <Entry>[
      Entry('-Titulo 2.1'),
      Entry('-Titulo 2.2'),
    ],
  ),
];

class EntryItem extends StatelessWidget {
  final Entry entry;

  const EntryItem(this.entry);

  @override
  Widget build(BuildContext context) {
    print(entry.toString());
    return _buildTiles(entry);
  }

  Widget _buildTiles(Entry root) {

    if (root.children.isEmpty) {
      return ListTile(
        title: sub_boton(title_expandible: root.title),
      );
    }else{
      return ExpansionTile(
        key: PageStorageKey<Entry>(root),
        title: sub_boton(title_expandible: root.title),//Text(root.title,),
        children: root.children.map(_buildTiles).toList(),
      );
    }

  }

}

class sub_boton extends StatefulWidget {

  sub_boton({Key key, this.title_expandible}) : super(key: key);

  final String title_expandible;


  @override
  _sub_botonState createState() => _sub_botonState();
}

class _sub_botonState extends State<sub_boton> {

  @override
  Widget build(BuildContext context) {

    double margen = 0;

    if(widget.title_expandible.startsWith('-')){margen = 20;}
    if(widget.title_expandible.startsWith('--')){margen = 40;}
    if(widget.title_expandible.startsWith('---')){margen = 60;}
    if(widget.title_expandible.startsWith('----')){margen = 80;}
    if(widget.title_expandible.startsWith('-----')){margen = 100;}


    String newtitle = "";

    newtitle = widget.title_expandible;

    if(widget.title_expandible.startsWith('-----')){margen = 100; newtitle = widget.title_expandible.substring(5);}
    else if(widget.title_expandible.startsWith('----')){margen = 80; newtitle = widget.title_expandible.substring(4);}
    else if(widget.title_expandible.startsWith('---')){margen = 60; newtitle = widget.title_expandible.substring(3);}
    else if(widget.title_expandible.startsWith('--')){margen = 40; newtitle = widget.title_expandible.substring(2);}
    else if(widget.title_expandible.startsWith('-')){margen = 20; newtitle = widget.title_expandible.substring(1);}

    return Container(padding: EdgeInsets.only(left: margen),
        //width: 300,
        height: 30,
        child: ElevatedButton(
            child: Row(
              children: <Widget>[
                Text(newtitle,
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  child: Container(),
                  flex: 1,
                )
              ],
            ),
            onPressed: () {
              print(newtitle);
            }));
  }
}
""";