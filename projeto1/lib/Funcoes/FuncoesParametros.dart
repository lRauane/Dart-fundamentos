void main(List<String> arguments) {
  print(execultar(10, incremetar));
  print(execultar(10, decrementar));
}

int execultar(int number, Function func) {
  return func(number);
}

int incremetar(int number) {
  return number + 1;
}

int decrementar(int number) {
  return number - 1;
}
