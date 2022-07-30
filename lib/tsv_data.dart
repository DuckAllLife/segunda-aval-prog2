import 'delimited_data.dart';

class TsvData extends DelimitedData {

  @override
  String get separator => '\t';

  @override
  bool get hasData => lines.isNotEmpty;

  @override
  List<String> get fields => lines[0].split(separator);

  @override
  void clear() => lines.clear();

  @override
  String get data => lines.toString();

  @override
  set data(String data) => lines.add(data);
}
