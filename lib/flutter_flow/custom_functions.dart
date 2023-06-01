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
import '../../auth/firebase_auth/auth_util.dart';

List<String>? getDaysForDrain(
  int drainIndex,
  List<DrainEntryStruct> drainEntries,
  DateTime surgeryDay,
) {
  Set<String> times = {};
  if (drainEntries.length == 0) {
    return null;
  }
  for (var i = 0; i < drainEntries.length; i++) {
    if (drainEntries[i].id == drainIndex) {
      var dateTime = DateFormat('yyyy-MM-dd HH').parse(drainEntries[i].date!);
      String difference = dateTime.difference(surgeryDay).inDays.toString();
      if (!times.contains(difference)) {
        times.add(difference);
      }
    }
  }
  List<String> timestamps = times.toList();
  if (timestamps.length > 5) {
    timestamps =
        timestamps.getRange(timestamps.length - 5, timestamps.length).toList();
  }
  return timestamps;
}

List<int>? getOutputsForDrain(
  int drainIndex,
  List<DrainEntryStruct> drainEntries,
  DateTime surgeryDay,
) {
  var daysToOutput = new Map();

  if (drainEntries.length == 0) {
    return null;
  }
  for (var i = 0; i < drainEntries.length; i++) {
    if (drainEntries[i].id == drainIndex) {
      var dateTime = DateFormat('yyyy-MM-dd HH').parse(drainEntries[i].date!);
      int difference = dateTime.difference(surgeryDay).inDays;
      String difference_str = difference.toString();
      if (daysToOutput.containsKey(difference_str)) {
        daysToOutput[difference_str] =
            daysToOutput[difference_str] + drainEntries[i].output!;
      } else {
        daysToOutput[difference_str] = drainEntries[i].output!;
      }
    }
  }

  List<int> outputs = [];
  daysToOutput.forEach((k, v) => outputs.add(v));
  if (outputs.length > 5) {
    outputs = outputs.getRange(outputs.length - 5, outputs.length).toList();
  }
  return outputs;
}

List<DrainStruct>? getDrainsToRemove(
  List<int>? drainsToRemove,
  List<DrainStruct> drains,
) {
  List<DrainStruct> toRemove = [];
  if (drainsToRemove == null || drainsToRemove.length == 0) {
    return toRemove;
  }
  for (var i = 0; i < drainsToRemove.length; i++) {
    var drainId = drainsToRemove[i];
    toRemove.add(drains[drainId - 1]);
  }
  return toRemove;
}
