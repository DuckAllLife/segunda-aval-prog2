import 'delimited_data.dart';

class TsvData extends DelimitedData {
  TsvData();

  @override
  String get separator => '\t';

  @override
<<<<<<< HEAD
  bool get hasData => (lines.isNotEmpty) ? true : false;
>>>>>>> e5abcad1431638fb4d30f32057d990e0a11061d2
=======
=======

>>>>>>> d9236bec1c91e062f92308d3f699d41f35203032
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
