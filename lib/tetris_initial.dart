import 'package:flutter/foundation.dart';

class TetrisInitial {
  static Future<void> init() async {
    bool debug = false;
    assert(() {
      debug = true;
      return true;
    }());
    if (!debug) {
      debugPrint = (message, {wrapWidth}) {
        //disable log print when not in debug mode
      };
    }
  }
}