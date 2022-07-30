import 'dart:io';
import 'package:xml/xml.dart';
import 'Data.dart';

class XmlData extends Data {
  //loud carrega
  @override
  void load(String fileName) {
    content = File(fileName).readAsStringSync();
    final xml = XmlDocument.parse(content);
    final records = xml.findAllElements('record');
    print('records ${records}');
    print('xml ${xml}');
  }

  @override
  late String data;

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
