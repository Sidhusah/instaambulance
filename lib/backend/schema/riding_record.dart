import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RidingRecord extends FirestoreRecord {
  RidingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "driver_ref" field.
  DocumentReference? _driverRef;
  DocumentReference? get driverRef => _driverRef;
  bool hasDriverRef() => _driverRef != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "user_location" field.
  LatLng? _userLocation;
  LatLng? get userLocation => _userLocation;
  bool hasUserLocation() => _userLocation != null;

  // "driver_location" field.
  LatLng? _driverLocation;
  LatLng? get driverLocation => _driverLocation;
  bool hasDriverLocation() => _driverLocation != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "distance" field.
  String? _distance;
  String get distance => _distance ?? '';
  bool hasDistance() => _distance != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _driverRef = snapshotData['driver_ref'] as DocumentReference?;
    _created = snapshotData['created'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _userLocation = snapshotData['user_location'] as LatLng?;
    _driverLocation = snapshotData['driver_location'] as LatLng?;
    _duration = snapshotData['duration'] as String?;
    _distance = snapshotData['distance'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('riding');

  static Stream<RidingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RidingRecord.fromSnapshot(s));

  static Future<RidingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RidingRecord.fromSnapshot(s));

  static RidingRecord fromSnapshot(DocumentSnapshot snapshot) => RidingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RidingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RidingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RidingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RidingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRidingRecordData({
  DocumentReference? userRef,
  DocumentReference? driverRef,
  DateTime? created,
  String? status,
  LatLng? userLocation,
  LatLng? driverLocation,
  String? duration,
  String? distance,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'driver_ref': driverRef,
      'created': created,
      'status': status,
      'user_location': userLocation,
      'driver_location': driverLocation,
      'duration': duration,
      'distance': distance,
    }.withoutNulls,
  );

  return firestoreData;
}

class RidingRecordDocumentEquality implements Equality<RidingRecord> {
  const RidingRecordDocumentEquality();

  @override
  bool equals(RidingRecord? e1, RidingRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.driverRef == e2?.driverRef &&
        e1?.created == e2?.created &&
        e1?.status == e2?.status &&
        e1?.userLocation == e2?.userLocation &&
        e1?.driverLocation == e2?.driverLocation &&
        e1?.duration == e2?.duration &&
        e1?.distance == e2?.distance;
  }

  @override
  int hash(RidingRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.driverRef,
        e?.created,
        e?.status,
        e?.userLocation,
        e?.driverLocation,
        e?.duration,
        e?.distance
      ]);

  @override
  bool isValidKey(Object? o) => o is RidingRecord;
}
