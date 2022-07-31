
import 'csv_data.dart';
import 'xml_data.dart';

void main() {
  XmlData test = XmlData();
  //CsvData test = CsvData();
  test.load('example_files/example_xml.xml');
  print(test.hasData);
  print(test.fields);
  

  print(
      "\nIntegrantes do Grupo: Celenny Cristhyne do Nascimento Souza, Gabriel Benigno Rocha, Richelle Kim Mota Bahia");
}
