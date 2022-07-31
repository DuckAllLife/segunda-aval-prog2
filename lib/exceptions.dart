class Exceptions {
  
  dynamic test;

  @override
    String toString() => 'Exception Error';

  }

class InvalidJsonDataFormat extends Exceptions {
  
  @override
  String toString() => 'Invalid Json Data Format';
  }
