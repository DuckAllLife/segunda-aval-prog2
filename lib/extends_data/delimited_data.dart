
import '../data.dart';

abstract class DelimitedData extends Data{
  
  late List<String> lines;

  String get separator;
}
