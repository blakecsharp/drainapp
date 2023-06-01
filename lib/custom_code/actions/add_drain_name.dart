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

Future<void> addDrainName(int drainIndex, String drainLabel) async {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    final ref = await users.doc(user.uid).get();
    var data = ref.data() as Map<String, dynamic>;
    if (data != null) {
      data['drains'][drainIndex - 1]["name"] = drainLabel;
      final retVal = users
          .doc(user.uid)
          .update({'drains': data['drains']})
          .then((value) => print("User Updated"))
          .catchError((error) => print("Failed to update user: $error"));
    }
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
