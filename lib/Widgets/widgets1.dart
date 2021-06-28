
const String t_giro_de_pantalla = 'SystemChrome.setPreferredOrientations([ DeviceOrientation.portraitUp]);';
const String codigo_de_showSnackBar = """
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
content: Text("algo de texto"),
duration: Duration(seconds: 5)
backgroundColor: Colors.blue,
action: SnackBarAction(
  label: "Done",
  textColor: Colors.white,
  onPressed: () {},
),
));""";
const String codigo_saltar_pantalla = 'Navigator.push(context,MaterialPageRoute(builder: (context) => pantalla()),);';

String shared_preferences =
"""

//dependencies:
//  shared_preferences: ^0.5.3+4
  
String str_pref ;
int int_pref;

@override
void initState() {
  super.initState();
  get_pref_str();
  get_pref_int();
}

get_pref_str() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  setState(() {str_pref = (prefs.getString("str_pref") ?? "");});
}

set_pref_str() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("str_pref", str_pref);
}

get_pref_int() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  setState(() {int_pref = (prefs.getInt("int_pref") ?? 0);});
}

set_pref_int() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt("int_pref", int_pref);
}

int int_numero = 0;
String str_texto = "";
List<dynamic> lis_lista = [];
String str_list = "";
String str_db = "";

/*
str_pref= val;
set_pref_str();

int_pref--;
set_pref_int();

int_pref++;
set_pref_int();
*/

""";