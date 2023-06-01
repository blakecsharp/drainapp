// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

Future<void> createDrains(int numDrains) async {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final user = FirebaseAuth.instance.currentUser;
  //Push to firestorm;
  var drainArray =
      List.generate(numDrains, (index) => {"id": index + 1, "active": true});
  if (user != null) {
    final retVal = users
        .doc(user.uid)
        .update({'drains': drainArray})
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
