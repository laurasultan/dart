//////////////////////////////////////// row_column > main.dart //////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:row_column/myhome.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      title: "Row & Column",
      home: MyHome()
    );
  }
}

////////////////////////////////// Segundo arquivo > lib > myhome.dart ///////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:row_column/mybody.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Row & Column"),
        centerTitle: true,
      ),
      body: MyBody(),
    );
  }
}

////////////////////////////////// Terceiro arquivo > lib > mybody.dart //////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FlutterLogo(size: 150),
                FlutterLogo(size: 150),
                FlutterLogo(size: 150),
                FlutterLogo(size: 150),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: FlutterLogo(size: 100),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: FlutterLogo(size: 100)
            ),
          Center(
            child: FlutterLogo(size: 100)
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: FlutterLogo(size: 100)
          ),
          FlutterLogo(size: 300),
          FlutterLogo(size: 300)
        ],
      ),
    );
  }
}
