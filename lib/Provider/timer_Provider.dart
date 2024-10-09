import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

class TimerProvider with ChangeNotifier {
  Timer? countdownTimer;
  Duration myDuration = Duration(days: 12);

  String strDigits(int n) => n.toString().padLeft(2, '0');

  late var _days = strDigits(myDuration.inDays);
  late var _hours = strDigits(myDuration.inHours.remainder(24));
  late var _minutes = strDigits(myDuration.inMinutes.remainder(60));
  late var _seconds = strDigits(myDuration.inSeconds.remainder(60));

  get days => _days;
  get hours => _hours;
  get minutes => _minutes;
  get seconds => _seconds;

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
    notifyListeners();
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    final seconds = myDuration.inSeconds - reduceSecondsBy;
    if (seconds < 0) {
      countdownTimer!.cancel();
    } else {
      myDuration = Duration(seconds: seconds);
      _days = strDigits(myDuration.inDays);
      _hours = strDigits(myDuration.inHours.remainder(24));
      _minutes = strDigits(myDuration.inMinutes.remainder(60));
      _seconds = strDigits(myDuration.inSeconds.remainder(60));
    }
    notifyListeners();
  }
}
