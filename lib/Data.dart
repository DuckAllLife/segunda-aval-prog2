import 'dart:io';

abstract class Data {
  
  late final String content;

  void load(String fileName) => content = File(fileName).readAsStringSync();

  void save(String fileName) => File(fileName).writeAsStringSync(content);

  void clear();

  bool get hasData;

  String get data;

  set data(String x);

  List<String> get fields;

}
