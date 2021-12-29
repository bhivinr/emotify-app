import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

int getRank(int max) {
  // Add your function code here!
  math.Random random = new math.Random();
  int randomNumber = random.nextInt(max) + 1;
  return randomNumber;
}

DateTime getTimestamp() {
  return DateTime.now();
}
