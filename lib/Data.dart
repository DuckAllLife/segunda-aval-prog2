import 'dart:io';

abstract class Data {
  
  late String content;
  late File outFile;

  void load(String fileName) => content = File(fileName).readAsStringSync();

  void save(String fileName) => outFile = File('example_csv_out.csv');

  void clear();

  bool get hasData;

  String get data;

  set data(x);

  List<String> get fields;

}
