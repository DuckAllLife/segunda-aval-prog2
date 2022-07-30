
abstract class Data {
  
  late String content;

  void load(String fileName);

  void save(String fileName);

  void clear();

  bool get hasData;

  String? get data;

  set data(String? x);

  List<String> get fields;

}
