part of 'imports.dart';

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
  
  @override
  // TODO: implement data
  String get data => mapRecord.toString();

  set data(String? value) => throw UnimplementedError();
  
  @override
  void clear() => mapRecord.clear();
    

  @override
  List<String> get fields => mapRecord.keys.toList();

  @override
  bool get hasData => mapRecord.isNotEmpty;
}
