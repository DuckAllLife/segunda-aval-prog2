import 'dart:io';
import 'package:xml/xml.dart';
import 'Data.dart';


class XmlData extends Data {
  Map<String, dynamic> mapRecord = {};

  @override
  void load(xmlfile) {
    final content = File(xmlfile).readAsStringSync();  // lendo o arquivo
    final xmlDoc = XmlDocument.parse(content); 
    final records = xmlDoc.findAllElements('record');

    for (XmlElement record in records){

      for (var element in record.attributes){
        mapRecord[element.name.toString()] = element.value;
      }
      print(mapRecord);
    }
  }
  
  @override
  // TODO: implement data
  String get data => throw UnimplementedError();

  set data(value) => throw UnimplementedError();
  
  @override
  void clear() {
    // TODO: implement clear
  }
  
  @override
  // TODO: implement fields
  List<String> get fields => throw UnimplementedError();
  
  @override
  // TODO: implement hasData
  bool get hasData => throw UnimplementedError();
}
