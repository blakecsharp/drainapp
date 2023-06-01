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

bool _isNumeric(String str) {
  return double.tryParse(str) != null;
}

Future<void> addDrainEntry(int newEntry, int drainId) async {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    final ref = await users.doc(user.uid).get();
    var data = ref.data() as Map<String, dynamic>;
    var entries = data["entries"];
    if (entries == null) {
      entries = [];
    }
    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy-MM-dd HH');
    String formattedDate = formatter.format(now);
    var entry = {"date": formattedDate, "output": newEntry, "id": drainId};
    entries.add(entry);
    final retVal = users
        .doc(user.uid)
        .update({
          "entries": entries,
        })
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
