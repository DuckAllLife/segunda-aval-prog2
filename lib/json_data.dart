import 'dart:convert';
import 'dart:io';
import 'data.dart';

class JsonData extends Data{

  @override
  void load(String fileName) {
    final data = jsonDecode(content);
  }

  @override
  void save(String fileName) {
    File(fileName).writeAsStringSync(jsonEncode(data));
  }
}