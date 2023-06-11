import 'package:flutter/foundation.dart';

class Debugger {
  Object? _obj;
  static final Debugger _debug = Debugger._print();

  factory Debugger(Object? object) {
    _debug._obj = object;
    if (kDebugMode) {
      print(_debug._obj);
    }
    return _debug;
  }

  Debugger._print();
}
