void classificacao(double imc){
  switch (imc) {
    case < 16:
      print("Magreza grave");
    break;
    case < 17:
      print("Magreza moderada");
    break;
    case < 18.5:
       print("Magreza leve");
    break;
    case < 25:
       print("Saudável");
    break;
    case < 30:
       print("Sobrepeso");
    break;
    case < 35:
       print("Obsidade grau 1");
    break;
    case < 40:
       print("Obsidade grau 2 (severa)");
    break;
    case >= 40:
       print("Obsidade grau 3 (mórbita)");
    break;
    default:
      print("Impossivel identificar a classificação.");
  }
}