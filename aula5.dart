void main() {
  Animal bicho1 = Animal("Tartaruga", 59, 124.522);
  print(bicho1);
}

class Animal {
  //Atributos
  String? _especie;        // ? null saved
  int? _idade;
  double? _peso;
  
  //Construtor
  Animal(this._especie, this._idade, this._peso);
  
  @override
  String toString() =>
    "Espécie: $_especie\nIdade: $_idade anos\nPeso: $_peso kg";
}

-------------------------------------------- LISTA MAP ---------------------------------------------------

void main() {
  //Criando Map vazio. A chave será "int", o valor será "Animal"
  Map<int, Animal> bichos = {};
  
  //Criando um objeto da classe Animal
  Animal bicho1 = Animal("Tartaruga", 59, 124.522);
  Animal bicho2 = Animal("Cavalo", 12, 214.341);
  
  bichos[0] = bicho1;
  bichos[1] = bicho2;
  
  print(bichos);
  //print(bichos.values.elementAt(1));
}

class Animal {
  //Atributos
  String? _especie;
  int? _idade;
  double? _peso;
  
  //Construtor
  Animal(this._especie, this._idade, this._peso);
  
  @override
  String toString() =>
    "Espécie: $_especie\nIdade: $_idade anos\nPeso: $_peso kg";
}

-------------------------------------------- exemplo Counter ---------------------------------------------------
  
// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Contador'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //Atributo
  final String title;

  //Construtor
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  
  void _clearCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nome que eu quiser"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'CONTADOR',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Mais',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _clearCounter,
              tooltip: 'Zerar',
              child: const Icon(Icons.clear),
            ),
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Menos',
              child: const Icon(Icons.remove),
            ),
          ]
        ),

    ); //Scaffold
  }
}
