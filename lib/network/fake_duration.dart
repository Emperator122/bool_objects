import 'dart:math';

mixin FakeDuration {
  // NOTE: 10.2
  Future get fakeDuration =>
      Future.delayed(Duration(milliseconds: Random().nextInt(5001)));
}
