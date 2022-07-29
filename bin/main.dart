import 'dart:io';

void main() {
  

  final inFile = File('example_files/example_csv.csv');
  final outFile = File('example_csv_out.csv');

  final content = inFile.readAsStringSync();
  
  outFile.createSync();
  outFile.writeAsStringSync(content);

  print("Integrantes do Grupo: Celenny Cristhyne do Nascimento Souza, Gabriel Benigno Rocha, Richelle Kim Mota Bahia");

}
