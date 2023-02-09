import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int? activedrains(List<bool>? drains) {
  int activedrains = 0;
  if (drains != null) {
    if (drains[0]) {
      activedrains += 1;
    }
    if (drains[2]) {
      activedrains += 1;
    }
    if (drains[3]) {
      activedrains += 1;
    }
    if (drains[4]) {
      activedrains += 1;
    }
    if (drains[5]) {
      activedrains += 1;
    }
    if (drains[6]) {
      activedrains += 1;
    }
  }
  // Add your function code here!
  return activedrains;
}

double returnoutput(double? time) {
  if (time != null) {
    return (time + 40 - 2 * time);
  }
  return 0;
}
