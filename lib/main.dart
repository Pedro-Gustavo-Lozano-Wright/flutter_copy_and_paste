import 'dart:developer';
import 'package:flutter/material.dart';

import 'Columnas/columna1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Catalago',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Flutter Catalago'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(4),
        child: Center(
          child: Container(
            width: 58,
            child: Center(
                child: columna1(),/*ElevatedButton(
              child: Text("a"),
              onPressed: () {
                //openRecipeFoodSheet(context);
                //PestanaEmergenteCompacta(context);
              },
            )*/ //columna1()),//listaDeOpciones()//
                ),
          ),
        ),
      )
    );
  }
}

//flutter build web
//flutter run -d chrome

//desplegable_1(),
//sub_lista_desplegable(),

/*


environment:
  sdk: ">=2.11.0 <3.0.0"#">=2.12.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  dio: ^3.0.10
  equatable: ^1.2.5
  hive: ^1.4.4+1
  hive_flutter: ^0.3.1
  provider: ^4.0.5
  bloc: ^6.1.0
  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  effective_dart: ^1.3.1
  build_runner: ^1.10.10
  json_serializable: ^3.5.0
  hive_generator: ^0.8.2
  retrofit_generator: 1.4.0+2

# For information on the generic Dart part of this file, see the
# following page: https://dart.dev/tools/pub/pubspec

# The following section is specific to Flutter.
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
    - images/saltar_pantalla.png
    - images/t_mensaje_rapido.png
    - images/menu_inferior.png
    - images/pestalla_emergente.png
    - images/pestalla_emergente_compacta.png
    - images/sub_lista_desplegable.png
  #   - images/a_dot_ham.jpeg










// añadir permisos en el AndroidManifest.xml que esta en la carpeta res o afuera de ella     <uses-permission android:name="android.permission.INTERNET"/>
// cambiar el "minSdkVersion 16" a 21 o 23 en build.gradle  21 = android 5.  23 = android 6
// añadir referencia a archvo nuevo y paquetes en pubspec.yaml

//  path_provider: ^1.5.1 #  path_provider: ^2.0.1
//  sqflite: ^1.3.0

/*
  generic_bloc_provider: ^1.1.0
  sqflite: ^1.3.0
  #path_provider: ^2.0.1
  path_provider: ^1.5.1
  #   flutter_tts: ^1.0.0
  #   url_launcher: ^5.5.3
  #   flutter_tts_improved: ^1.0.3
  #   flutter_local_notifications: ^1.4.0
  shared_preferences: ^0.5.6+3
  #   carousel_slider: ^1.4.0
  #   google_fonts: ^0.3.10
  #   webview_flutter: ^0.3.22+1
  rxdart: ^0.27.0
  http: ^0.12.0+2
  flutter_isolate: ^2.0.0
*/

// errores
// https://github.com/flutter/flutter-intellij/issues/2307
//https://stackoverflow.com/questions/57000043/error-entrypoint-isnt-within-the-current-project#:~:text=If%20your%20ios%2C%20android%2C%20or,you%20can%20display%20the%20hidden%20.
//https://stackoverflow.com/questions/48650831/dart-sdk-is-not-configured


/*
Turn off Null Safety
pubspec.yam
environment:
  sdk: ">=2.11.0 <3.0.0"
//// @dart=2.9
https://stackoverflow.com/questions/65302065/turn-off-null-safety-for-previous-flutter-project
*/











            Column(
              children: [
                Expanded(child: ListView(
                  children: <Widget>[

                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.indigo),
                      alignment: Alignment(0, 0),
                      child: Text(
                        "Primer eje - Columnas",
                        style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),

                    Text("\nJuntos empezando"),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5)),
                        height: 50, width: 80 ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            boxWidget(),
                            boxWidget(),
                            boxWidget(),
                          ],
                        ),
                      ),
                    ),
                    Text("\nJuntos en el centro"),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5)),
                        height: 50, width: 80 ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            boxWidget(),
                            boxWidget(),
                            boxWidget(),
                          ],
                        ),
                      ),
                    ),
                    Text("\nJuntos al final"),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5)),
                        height: 50, width: 80 ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            boxWidget(),
                            boxWidget(),
                            boxWidget(),
                          ],
                        ),
                      ),
                    ),
                    Text("\nEspaciadores"),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5)),
                        height: 50, width: 80 ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            boxWidget(),
                            boxWidget(),
                            boxWidget(),
                          ],
                        ),
                      ),
                    ),
                    Text("\nEspacio entre objetos"),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5)),
                        height: 50, width: 80 ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            boxWidget(),
                            boxWidget(),
                            boxWidget(),
                          ],
                        ),
                      ),
                    ),
                    Text("\nEspacio arlrededos"),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5)),
                        height: 50, width: 80 ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            boxWidget(),
                            boxWidget(),
                            boxWidget(),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.indigo),
                      alignment: Alignment(0, 0),
                      child: Text(
                        "Segundo eje - Columnas",
                        style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),

                    Text("\nEn el segundo eje flotando"),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5)),
                        height: 50, width: 80 ,
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            boxWidget(),
                            boxWidget(),
                            boxWidget(),
                          ],
                        ),
                      ),
                    ),
                    Text("\nEn el segundo eje al empezar"),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5)),
                        height: 50, width: 80 ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            boxWidget(),
                            boxWidget(),
                            boxWidget(),
                          ],
                        ),
                      ),
                    ),
                    Text("\nEn el segundo eje al final"),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5)),
                        height: 50, width: 80 ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            boxWidget(),
                            boxWidget(),
                            boxWidget(),
                          ],
                        ),
                      ),
                    ),
                    Text("\nEn el segundo eje hasata llenar"),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5)),
                        height: 50, width: 80 ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            boxWidget(),
                            boxWidget(),
                            boxWidget(),
                          ],
                        ),
                      ),
                    ),


                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.indigo),
                      alignment: Alignment(0, 0),
                      child: Text(
                        "Primer eje - Filas",
                        style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),

                    Text("\nJuntos empezando"),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    ),
                    Text("\nJuntos en el centro"),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    ),
                    Text("\nJuntos al final"),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    ),
                    Text("\nEspaciadores"),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    ),
                    Text("\nEspacio entre objetos"),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    ),
                    Text("\nEspacio arlrededos"),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    ),

                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.indigo),
                      alignment: Alignment(0, 0),
                      child: Text(
                        "Segundo eje - Filas",
                        style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),

                    Text("\nEn el segundo eje flotando"),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                      height: 80,
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    ),
                    Text("\nEn el segundo eje al empezar"),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                      height: 80,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    ),
                    Text("\nEn el segundo eje al final"),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                      height: 80,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    ),
                    Text("\nEn el segundo eje hasata llenar"),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                      height: 80,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    ),

                  ],
                ), flex: 1,),
              ],
            )





















*/
