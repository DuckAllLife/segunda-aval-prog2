import 'tsv_data.dart';

void main() {
  //final inFile = File('example_files/example_csv.csv');
  //final outFile = File('example_csv_out.csv');

  //final content = inFile.readAsStringSync();

  //outFile.createSync();
  //outFile.writeAsStringSync(content);

  TsvData test = TsvData();
  test.load('example_files/example_tsv.tsv');

  print('separador: ${test.separator}');
  print('hasdada: ${test.hasData}');
  print('teste fields: ${test.fields}');

  print('get: ${test.data}');

  test.data = 'ARFTGFFSAADSF'; //set
  print('get: ${test.data}');

  test.clear();

  print('get: ${test.data}');
  print(test.lines);
  print(test.hasData);

  test.save('teste.tsv');

  print(
      "\nIntegrantes do Grupo: Celenny Cristhyne do Nascimento Souza, Gabriel Benigno Rocha, Richelle Kim Mota Bahia");
}
