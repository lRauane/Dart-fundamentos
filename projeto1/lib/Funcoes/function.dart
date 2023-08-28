void main (List<String> arguments){
 printHelloWorld();
 printName("Rauane");
 print(returnNumber());

 var result = soma(30, 0);
 print(result);
}

void printHelloWorld(){
   print("Hello world");
}

void printName(String name){
  print("My name is: $name");
}

int returnNumber(){
  return 30;
}

int soma(int number1, int number2){
  return number1 + number2;
}

