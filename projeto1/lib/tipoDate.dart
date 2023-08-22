void main(List<String> arguments) {
  DateTime data = DateTime.now();

  // Partes da data 
  print(data);
  print(data.day);
  print(data.month);
  print(data.year);
  print(data.hour);
  print(data.microsecond);
  print(data.second);

  // Dia da semana
  print(data.weekday);

  // Soma das datas
  print(data.add(Duration(days: 1)));
  print(data);

  print(data.subtract(Duration(hours: 1)));
  print(data);

  var data2 = DateTime.parse("2003-09-13 00:00:00");
  print(data.isAfter(data2));
  print(data.isBefore(data2));
}