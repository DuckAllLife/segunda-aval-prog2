import 'dart:convert';
import 'dart:io';
import 'data.dart';

class JsonData extends Data{

  dynamic dataJson = [];

  void load(String fileName) {
    content = File(fileName).readAsStringSync();
    dataJson = (jsonDecode(content));
  }

  void save(String fileName) {
    File(fileName).writeAsStringSync(jsonEncode(dataJson));
  }

  void clear() => dataJson.clear();

  bool get hasData => dataJson.isNotEmpty;

  String? get data => hasData ? dataJson.toString() : null;

  set data(String? x) => x != null ? dataJson.insert(dataJson.length, jsonDecode(x)) : dataJson.insert([]);

  List<String> get fields => dataJson[0].keys.toList();

}