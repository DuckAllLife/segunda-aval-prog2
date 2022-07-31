part of 'imports.dart';

abstract class DelimitedData extends Data{
  
  late final List<String> lines = content.split('\n');

  String get separator;
  
} 
