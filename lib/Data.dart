
abstract class Data {
  
  void load(String fileName);

  void save(String fileName);

  void clear();

  bool get hasData;

  String get data;

  set data(x);

  List<String> get fields;

}
