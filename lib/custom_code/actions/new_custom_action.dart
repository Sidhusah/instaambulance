// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction() async {
  // request for location permission

  LocationPermission permission = await Geolocator.requestPermission();

  if (permission == LocationPermission.denied) {
    // Handle denied permission
    print('Location permission denied');
  } else if (permission == LocationPermission.deniedForever) {
    // Handle denied forever permission
    print('Location permission denied forever');
  } else {
    // Permission granted, do something with location
    print('Location permission granted');
  }
}
