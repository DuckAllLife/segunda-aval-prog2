
import 'package:dart_dataprog2/extends_data/extends_delimeted_data/tsv_data.dart';

void main() {
  

  //final inFile = File('example_files/example_csv.csv');
  //final outFile = File('example_csv_out.csv');

  //final content = inFile.readAsStringSync();
  
  //outFile.createSync();
  //outFile.writeAsStringSync(content);

  TsvData test = TsvData();
  test.load('example_files/example_csv.csv');

  print(test.separator);
  print(test.hasData);
  print(test.fields);

  print(test.data);

  test.data = 'ARFTGFFSAADSF';
  print(test.data);

  test.clear();
  print(test.data);


  test.save('example_csv_out.csv');


  print("\nIntegrantes do Grupo: Celenny Cristhyne do Nascimento Souza, Gabriel Benigno Rocha, Richelle Kim Mota Bahia");

}
