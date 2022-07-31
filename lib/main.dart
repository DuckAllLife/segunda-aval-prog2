import 'xml_data.dart';

void main() {
  XmlData test = XmlData();
  test.load('example_files/example_xml.xml');
<<<<<<< HEAD
 // print(test.hasData);
  //print(test.fields);
  //print(test.data);
  
=======
  print(test.hasData);
  print(test.fields);
  print(test.data);
  test.clear();
  print(test.hasData);
  print(test.data);
>>>>>>> 88c868d8260ae9ac4aaba4621c6e8de3fd63565f

  print(
      "\nIntegrantes do Grupo: Celenny Cristhyne do Nascimento Souza, Gabriel Benigno Rocha, Richelle Kim Mota Bahia");
}
