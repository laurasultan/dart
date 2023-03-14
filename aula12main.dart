///////////////////////////////////////////// main.dart //////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:lista/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyList(),
    );
  }
}

///////////////////////////////////////////// lista.dart /////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lista/myjson.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  String alemanha = "https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/germany-flags-cat.png";
  String inglaterra = "https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/england-cat.png";
  String dinamarca = "https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/denmark-flags-cat.png";
  String franca = "https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/france-flags-cat.png";
  String brasil = "https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/brazil-flags-cat.png";
  late String imagemGrande = alemanha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("Listagem JSON"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyJson())
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Lista"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Alemanha"),
            subtitle: Text("Europa"),
            trailing: Icon(Icons.flag_circle),
            leading: Image(
              image: NetworkImage(alemanha)
            ),
            onTap: (){
              setState(() {
                imagemGrande = alemanha;
              });
            },
          ),

          ListTile(
            title: Text("Inglaterra"),
            subtitle: Text("Europa"),
            trailing: Icon(Icons.flag_circle),
            leading: Image(
              image: NetworkImage(inglaterra)
            ),
            onTap: (){
              setState(() {
                imagemGrande = inglaterra;
              });
            },
          ),

          ListTile(
            title: Text("Dinamarca"),
            subtitle: Text("Europa"),
            trailing: Icon(Icons.flag_circle),
            leading: Image(
              image: NetworkImage(dinamarca)
            ),
            onTap: (){
              setState(() {
                imagemGrande = dinamarca;
              });
            },
          ),

          ListTile(
            title: Text("França"),
            subtitle: Text("Europa"),
            trailing: Icon(Icons.flag_circle),
            leading: Image(
              image: NetworkImage(franca)
            ),
            onTap: (){
              setState(() {
                imagemGrande = franca;
              });
            },
          ),

          ListTile(
            title: Text("Brasil"),
            subtitle: Text("América do Sul"),
            trailing: Icon(Icons.flag_circle),
            leading: Image(
              image: NetworkImage(brasil)
            ),
            onTap: (){
              setState(() {
                imagemGrande = brasil;
              });
            },
          ),

          Container(
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(imagemGrande)
            ),
          )
        ],
      )
    );
  }
}

// link: https://www.united-states-flag.com/world-flags.html

////////////////////////////////////// (new file) lib > myjson.dart //////////////////////////////////////

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lista/lista.dart';

class MyJson extends StatefulWidget {
  const MyJson({Key? key}) : super(key: key);

  @override
  State<MyJson> createState() => _MyJsonState();
}

class _MyJsonState extends State<MyJson> {

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON"),
        actions: <Widget>[
          
          PopupMenuButton(
            onSelected: ((result) {
              switch(result){
                case 1:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyList()));
                  break;
              }
            }),
            icon: Icon(Icons.forward),
            iconSize: 40,
            itemBuilder: (context) {
              return [
                
                PopupMenuItem(
                  value: 1,
                  child: Text("Outra página"),
                ),
                
                PopupMenuItem(
                  value: 2,
                  child: Text("Mais um item (faz nada)"),
                ),  
              ];
            }
          )
        ],
      ),
      
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/dados.json"),
        builder: (context, snapshot) {
          var content = json.decode(snapshot.data.toString());
          return ListView.builder(
            itemCount: content.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.person_outline),
                title: Text(
                  content[index]["nome"]
                ),
                subtitle: Text(
                  content[index]["idade"] + " anos"
                ),
                trailing: Text(
                  content[index]["email"]
                ),
              );
            },
          );
        },
      ),
    );
  }
}

///////////////////////////// (new folder) assets > (new file) dados.json ////////////////////////////////

[
    {
        "nome":"Paulo",
        "idade":"37",
        "email":"marketpro85@gmail.com"
    },
    {
        "nome":"André",
        "idade":"26",
        "email":"andrecatimba@ibest.com"
    },
    {
        "nome":"Donini",
        "idade":"47",
        "email":"1903fbpa@gmail.com"
    },
    {
        "nome":"Rocha",
        "idade":"33",
        "email":"rochafirme@ig.com.br"
    }
]
