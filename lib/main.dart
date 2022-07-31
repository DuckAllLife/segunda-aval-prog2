import 'json_data.dart';

void main() {
  //final inFile = File('example_files/example_json.json');
  //final outFile = File('example_json_out.json');

  //final content = inFile.readAsStringSync();

  //outFile.createSync();
  //outFile.writeAsStringSync(content);

  JsonData test = JsonData();
  test.load('example_files/example_json.json');
  //print(test.separator);
  //print(test.hasData);
  print(test.fields);

  //print(test.data);

  test.data = '{"id:""", "name:""", "email:""","" "phone:"""}';
  //test.data = null;
  //print(test.data);
  print(test.data);
  //test.clear();
  print(test.data);

  test.save('teste.json');

  print(
      '\nIntegrantes do Grupo: Celenny Cristhyne do Nascimento Souza, Gabriel Benigno Rocha, Richelle Kim Mota Bahia');
}
