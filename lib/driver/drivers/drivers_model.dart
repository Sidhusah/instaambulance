import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'drivers_widget.dart' show DriversWidget;
import 'package:flutter/material.dart';

class DriversModel extends FlutterFlowModel<DriversWidget> {
  ///  Local state fields for this page.

  List<LatLng> location = [];
  void addToLocation(LatLng item) => location.add(item);
  void removeFromLocation(LatLng item) => location.remove(item);
  void removeAtIndexFromLocation(int index) => location.removeAt(index);
  void insertAtIndexInLocation(int index, LatLng item) =>
      location.insert(index, item);
  void updateLocationAtIndex(int index, Function(LatLng) updateFn) =>
      location[index] = updateFn(location[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
