import 'csv_data.dart';

void main() {
  //final inFile = File('example_files/example_csv.csv');
  //final outFile = File('example_csv_out.csv');

  //final content = inFile.readAsStringSync();

  //outFile.createSync();
  //outFile.writeAsStringSync(content);

  CsvData test = CsvData();
  test.load('example_files/example_csv.csv');
  //print(test.separator);
  //print(test.hasData);
  //print(test.fields);

  //print(test.data);

  //test.data = 'ARFTGFFSAADSF';
  //print(test.data);
  print(test.content);
  test.clear();
  print(test.content);

  test.save('teste.csv');

  print(
      "\nIntegrantes do Grupo: Celenny Cristhyne do Nascimento Souza, Gabriel Benigno Rocha, Richelle Kim Mota Bahia");
}
