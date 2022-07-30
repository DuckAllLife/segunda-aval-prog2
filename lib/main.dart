import 'csv_data.dart';

void main() {
  //final inFile = File('example_files/example_csv.csv');
  //final outFile = File('example_csv_out.csv');

  //final content = inFile.readAsStringSync();

  //outFile.createSync();
  //outFile.writeAsStringSync(content);

  CsvData test = CsvData();
  test.load('example_files/csv-ex.csv');
  print('Get data ' + test.data);
  print('Test separator ' + test.separator);
  print('has data ${test.hasData}');
  print('Test fields ${test.fields}');

  print('Get data ' + test.data); // get

  test.data = 'ARFTGFFSAADSF'; // set
  print('set data ${test.data}');

  test.clear();
  print('has data ${test.data}');
  print('Get data ' + test.data);

  test.save('teste.tsv');

  print(
      "\nIntegrantes do Grupo: Celenny Cristhyne do Nascimento Souza, Gabriel Benigno Rocha, Richelle Kim Mota Bahia");
}
