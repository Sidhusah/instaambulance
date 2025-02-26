import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

LatLng newCustomFunction(String location) {
  // return location as longitude and latitude
  List<String> coordinates = location.split(',');
  double latitude = double.parse(coordinates[0]);
  double longitude = double.parse(coordinates[1]);
  return LatLng(latitude, longitude);
}

LatLng stringtolat(String string) {
  // string to  latlng
  List<String> parts = string.split(',');
  double latitude = double.parse(parts[0]);
  double longitude = double.parse(parts[1]);
  return LatLng(latitude, longitude);
}

List<LatLng> listlocations(
  LatLng userlocation,
  LatLng driverloaction,
) {
  // make a list of user and driver loactions and return in list
  List<LatLng> locations = [userlocation, driverloaction];
  return locations;
}
