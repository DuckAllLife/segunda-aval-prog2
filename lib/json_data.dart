import 'dart:convert';
import 'dart:io';
import 'data.dart';

class JsonData extends Data{

  @override
  void load(String fileName) {
    content = jsonEncode(File(fileName).readAsStringSync());
  }

  @override
  void save(String fileName) {
    File(fileName).writeAsStringSync(jsonDecode(content));
  }
}