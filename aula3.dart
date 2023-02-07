void main() {
  repeteFrase(0, 10, "Será que funciona?");
}

void repeteFrase(int i, int y, String text) {   //parâmetros
  for(i; i < y; i++){   //+=2
  //variável (atribuição), expressão booleana, incremento
    print(text);         
  }
}

----------------------------------------------------------------------------------------------------------
  
void main() {
  repeteFrase(text: "Olá", i: 0, y:10);
}

void repeteFrase({int? i, int? y, String? text}) {   //parâmetros opcionais
  //for(i; i < y; i++){   //+=2
  //variável (atribuição), expressão booleana, incremento
    //print(text);         
  //}
  print(i ?? 10);
  print(y ?? 1000);
  print(text ?? "Veio nada");
}

----------------------------------------------------------------------------------------------------------

void main() {
  Cliente cli1 = Cliente("Osmar Contato", "000.000.000-00");
  print(cli1);
  Cliente cli2 = Cliente("Fabíola Mendes", "111.111.111-11");
  print(cli2);
}

class Cliente {
  //Atributos
  late String nome;
  late String cpf;
  
  //Métodos
  Cliente(this.nome, this.cpf);   //construtor
  
  @override
  String toString(){
    return "Nome: $nome\n"+
           "CPF: $cpf";
  }
}
