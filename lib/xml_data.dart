import 'dart:io';
import 'package:xml/xml.dart';
import 'Data.dart';

class XmlData extends Data {
  Map<String, dynamic> mapRecord = {};

  @override
  void load(xmlfile) {
    final content = File(xmlfile).readAsStringSync(); // lendo o arquivo
    final xmlDoc = XmlDocument.parse(content);
    final records = xmlDoc.findAllElements('record');

    for (XmlElement record in records) {
      for (var element in record.attributes) {
        mapRecord[element.name.toString()] = element.value;
       
      }
      print(mapRecord);
    }
  }

  @override
  void save(xmlFile) {}
<<<<<<< HEAD
  
=======

>>>>>>> 88c868d8260ae9ac4aaba4621c6e8de3fd63565f
  @override
  // TODO: implement data
  String get data => mapRecord.toString();

<<<<<<< HEAD
  set data(String value) => throw UnimplementedError();
  
=======
  set data(value) => throw UnimplementedError();

>>>>>>> 88c868d8260ae9ac4aaba4621c6e8de3fd63565f
  @override
  void clear() => mapRecord.clear();
    

  @override
  List<String> get fields => mapRecord.keys.toList();

  @override
  bool get hasData => mapRecord.isNotEmpty;
}
