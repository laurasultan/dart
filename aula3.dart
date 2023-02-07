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
