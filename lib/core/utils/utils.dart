import 'dart:math';

import 'package:flutter/foundation.dart';

double clip(
  double number, {
  @required double minimum,
  @required double maximum,
}) {
  return min(max(number, minimum), maximum);
}
