void main() {
  //print("Hello world!");
  /*
  var cpu = "AMD";
  print(cpu);
  */ 
  String name = "laura";
  String nick = "laura";
  
  print("Bom dia $name, seu apelido é $nick.");
}

--------------------------------------------------------------------------------------------------
  
  void main() {
  int age = 22;
  const int hourYear = 8760;
  const int minYear = 525600;
  
  int ageHourYear = (age * hourYear);
  int ageMinYear = (age * minYear);
  
  //autocomplete: ctrl+bar
  print("Você já viveu $ageHourYear horas.");
  print("Em minutos, representa $ageMinYear minutos.");
  
  if(age < 18) {
    print("Very young.");
  } else if(age >= 18 && age < 30) {
    print("Almost adult.");
  } else if(age >= 30 && age < 60) {
    print("Old man.");
  } else {
    print("Queen Elizabeth.");
  }
  
  for(age; age >= 0; age--) {
    print(age);
  }
  
}
