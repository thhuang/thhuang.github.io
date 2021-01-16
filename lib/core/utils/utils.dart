import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

double clip(
  double number, {
  @required double minimum,
  @required double maximum,
}) {
  return min(max(number, minimum), maximum);
}

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
