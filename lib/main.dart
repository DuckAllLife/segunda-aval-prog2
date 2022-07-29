import 'tsv_data.dart';

void main() {
  //final inFile = File('example_files/example_csv.csv');
  //final outFile = File('example_csv_out.csv');

  //final content = inFile.readAsStringSync();

  //outFile.createSync();
  //outFile.writeAsStringSync(content);

  TsvData test = TsvData();
  test.load('example_files/example_tsv.tsv');
<<<<<<< HEAD
  print(test.hasData);
=======

>>>>>>> e5abcad1431638fb4d30f32057d990e0a11061d2
  print(test.separator);
  print(test.hasData);
  print(test.fields);

  print(test.data);

  test.data = 'ARFTGFFSAADSF';
  print(test.data);

  test.clear();
<<<<<<< HEAD

=======
  print(test.data);
  print(test.lines);
>>>>>>> e5abcad1431638fb4d30f32057d990e0a11061d2
  print(test.hasData);

  test.save('teste.tsv');

  print(
      "\nIntegrantes do Grupo: Celenny Cristhyne do Nascimento Souza, Gabriel Benigno Rocha, Richelle Kim Mota Bahia");
}
