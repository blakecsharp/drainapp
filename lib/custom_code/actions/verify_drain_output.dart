// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<bool> verifyDrainOutput() async {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    final ref = await users.doc(user.uid).get();
    var data = ref.data() as Map<String, dynamic>;
    var entries = data['entries'];

    Map<int, int> past24HourOutput = {};
    Map<int, int> past48HourOutput = {};
    Map<int, int> restOfOutputs = {};

    var now = new DateTime.now();
    var yesterday = now.subtract(new Duration(days: 1));
    var twoDays = now.subtract(new Duration(days: 2));
    for (var i = 0; i < entries.length; i++) {
      int drainId = entries[i]['id'];
      var drain = data["drains"][drainId - 1];
      var activeDrain = drain["active"];
      if (!activeDrain) {
        continue;
      }
      var dateElement = DateFormat('yyyy-MM-dd HH').parse(entries[i]['date']);
      int output = entries[i]['output'];
      if (dateElement.isBefore(now) && dateElement.isAfter(yesterday)) {
        if (past24HourOutput.containsKey(entries[i]['id'])) {
          past24HourOutput[entries[i]['id']] =
              past24HourOutput[entries[i]['id']]! + output;
        } else {
          past24HourOutput[entries[i]['id']] = output;
        }
      } else if (dateElement.isBefore(yesterday) &&
          dateElement.isAfter(twoDays)) {
        if (past48HourOutput.containsKey(entries[i]['id'])) {
          past48HourOutput[entries[i]['id']] =
              past48HourOutput[entries[i]['id']]! + output;
        } else {
          past48HourOutput[entries[i]['id']] = output;
        }
      } else {
        if (restOfOutputs.containsKey(entries[i]['id'])) {
          restOfOutputs[entries[i]['id']] =
              restOfOutputs[entries[i]['id']]! + output;
        } else {
          restOfOutputs[entries[i]['id']] = output;
        }
      }
    }
    List<int> drainsToRemove = [];
    past24HourOutput.forEach((k, v) {
      if (v < 30 &&
          ((past48HourOutput.containsKey(k) && past48HourOutput[k]! < 30) ||
              (!past48HourOutput.containsKey(k) &&
                  restOfOutputs.containsKey(k)))) {
        drainsToRemove.add(k);
      }
    });

    if (drainsToRemove.length > 0) {
      final retVal = users
          .doc(user.uid)
          .update({
            "drainsToRemove": drainsToRemove,
          })
          .then((value) => print("User Updated"))
          .catchError((error) => print("Failed to update user: $error"));
      return true;
    }
    return false;
  }
  return false;
}
