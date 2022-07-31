part of 'imports.dart';

void programFunctionNoErrors(){
    print('--------TESTE SEM ERROS-------');
    csvFunction();
    tsvFunction();
    jsonFunction();
    //xmlFunction();
  }

void csvFunction(){
  final test = CsvData();
  print('-----------CSV DATA---------');
  test.load('example_files/example_csv.csv');
  print('Separator: ${test.separator}\n');
  print('Test fields: ${test.fields}\n');
  print('Get data: ${test.data}\n');
  print('has data: ${test.hasData}\n');

  print('set data: "2045,"Leonardo Castro Lopes","leocalopes@email.com","21956482310","206.549.487-78"\n');
  test.data = '2045,"Leonardo Castro Lopes","leocalopes@email.com","21956482310","206.549.487-78"';
  print('Get data: ${test.data}\n');

  print('Test clear()');
  test.clear();
  print('has data: ${test.hasData}\n');
  print('Get data: ${test.data}\n');

  test.save('teste.csv');

}

void tsvFunction(){
  final test = TsvData();
  print('-----------TSV DATA---------');
  test.load('example_files/example_tsv.tsv');
  print('Separator: ${test.separator}\n');
  print('Test fields: ${test.fields}\n');
  print('Get data: ${test.data}\n');
  print('has data: ${test.hasData}\n');

  print('set data: "2045  "Leonardo Castro Lopes  "leocalopes@email.com"  "21956482310" "206.549.487-78"\n');
  test.data = '2045 "Leonardo Castro Lopes" "leocalopes@email.com"  "21956482310" "206.549.487-78"';
  print('Get data: ${test.data}\n');

  print('Test clear()');
  test.clear();
  print('has data: ${test.hasData}\n');
  print('Get data: ${test.data}\n');

  test.save('teste.tsv');
}

void jsonFunction(){
  final test = JsonData();
  print('-----------JSON DATA---------');
  test.load('example_files/example_json.json');
  print('Test fields: ${test.fields}\n');
  print('Get data: ${test.data}\n');
  print('has data: ${test.hasData}\n');

  print('set data: {"id": 2045, "name": "Leonardo Castro Lopes", "email": "leocalopes@email.com", "phone": "21956482310", "CPF": "206.549.487-78"}\n');
  //test.data = '{"id": 2045, "name": "Leonardo Castro Lopes", "email": "leocalopes@email.com", "phone": "21956482310", "CPF": "206.549.487-78"}';
  print('Get data: ${test.data}\n');

  print('Test.clear()');
  test.clear();
  print('has data: ${test.hasData}\n');
  print('Get data: ${test.data}\n');

  test.save('teste.json');
}

void xmlFunction(){
  
}

void jsonFunctionError(){
  final test = JsonData();
  print('-----------JSON DATA---------');
  test.load('example_files/example_json.json');
  print('Test fields: ${test.fields}\n');
  print('Get data: ${test.data}\n');
  print('has data: ${test.hasData}\n');

  test.data = '12132dasd, adasd12312';
  print('Get data: ${test.data}\n');

  print('Test.clear()');
  test.clear();
  print('has data: ${test.hasData}\n');
  print('Get data: ${test.data}\n');

  test.save('teste.json');
  /*
}

void xmlFunction(){
  final test = XmlData();
  print('-----------XML DATA---------');
  print(
      '\nIntegrantes do Grupo: Celenny Cristhyne do Nascimento Souza, Gabriel Benigno Rocha, Richelle Kim Mota Bahia');
*/
}

void programFunction(){
  programFunctionNoErrors();
  print('--------TESTE COM ERROS-------');
  jsonFunctionError();
}
