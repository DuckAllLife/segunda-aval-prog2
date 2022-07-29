import '../delimited_data.dart';

class CsvData extends DelimitedData {

  CsvData();

  @override
  String get separator => ',';

  @override
  bool get hasData => (lines != []) ? true : false;

  @override
  List<String> get fields => lines[0].split(separator);

  @override
  void clear() => lines = [];
  
  @override
  String get data => lines.toString();

  @override
  set data(String data) => lines.add(data);
}
