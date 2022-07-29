
import 'Data.dart';

abstract class DelimitedData extends Data{
  
  late final List<String> lines = content.split('\n');

  String get separator;
  
} 
