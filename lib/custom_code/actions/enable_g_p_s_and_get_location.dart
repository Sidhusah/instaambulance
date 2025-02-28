// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

Future<List<double>?> enableGPSAndGetLocation() async {
  // Request location permission
  var status = await Permission.location.request();

  if (status.isGranted) {
    // Check if GPS is enabled
    bool isGPSEnabled = await Geolocator.isLocationServiceEnabled();

    if (!isGPSEnabled) {
      // Open GPS settings to enable it
      await Geolocator.openLocationSettings();
      return null; // Return null if GPS is not enabled
    }

    // Get current location
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    return [position.latitude, position.longitude]; // Return lat, lng as a list
  } else {
    print("Location permission denied");
    return null; // Return null if permission is denied
  }
}
