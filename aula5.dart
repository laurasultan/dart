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
