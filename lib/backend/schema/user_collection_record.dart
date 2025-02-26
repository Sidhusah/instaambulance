import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCollectionRecord extends FirestoreRecord {
  UserCollectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "license_number" field.
  String? _licenseNumber;
  String get licenseNumber => _licenseNumber ?? '';
  bool hasLicenseNumber() => _licenseNumber != null;

  // "experience" field.
  double? _experience;
  double get experience => _experience ?? 0.0;
  bool hasExperience() => _experience != null;

  // "ambulance_number" field.
  String? _ambulanceNumber;
  String get ambulanceNumber => _ambulanceNumber ?? '';
  bool hasAmbulanceNumber() => _ambulanceNumber != null;

  // "emergency_cname" field.
  String? _emergencyCname;
  String get emergencyCname => _emergencyCname ?? '';
  bool hasEmergencyCname() => _emergencyCname != null;

  // "emergency_number" field.
  String? _emergencyNumber;
  String get emergencyNumber => _emergencyNumber ?? '';
  bool hasEmergencyNumber() => _emergencyNumber != null;

  // "profile_complete" field.
  String? _profileComplete;
  String get profileComplete => _profileComplete ?? '';
  bool hasProfileComplete() => _profileComplete != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "license_photo" field.
  String? _licensePhoto;
  String get licensePhoto => _licensePhoto ?? '';
  bool hasLicensePhoto() => _licensePhoto != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _password = snapshotData['password'] as String?;
    _username = snapshotData['username'] as String?;
    _role = snapshotData['role'] as String?;
    _licenseNumber = snapshotData['license_number'] as String?;
    _experience = castToType<double>(snapshotData['experience']);
    _ambulanceNumber = snapshotData['ambulance_number'] as String?;
    _emergencyCname = snapshotData['emergency_cname'] as String?;
    _emergencyNumber = snapshotData['emergency_number'] as String?;
    _profileComplete = snapshotData['profile_complete'] as String?;
    _status = snapshotData['status'] as String?;
    _licensePhoto = snapshotData['license_photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_collection');

  static Stream<UserCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCollectionRecord.fromSnapshot(s));

  static Future<UserCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCollectionRecord.fromSnapshot(s));

  static UserCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCollectionRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? password,
  String? username,
  String? role,
  String? licenseNumber,
  double? experience,
  String? ambulanceNumber,
  String? emergencyCname,
  String? emergencyNumber,
  String? profileComplete,
  String? status,
  String? licensePhoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'password': password,
      'username': username,
      'role': role,
      'license_number': licenseNumber,
      'experience': experience,
      'ambulance_number': ambulanceNumber,
      'emergency_cname': emergencyCname,
      'emergency_number': emergencyNumber,
      'profile_complete': profileComplete,
      'status': status,
      'license_photo': licensePhoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCollectionRecordDocumentEquality
    implements Equality<UserCollectionRecord> {
  const UserCollectionRecordDocumentEquality();

  @override
  bool equals(UserCollectionRecord? e1, UserCollectionRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.password == e2?.password &&
        e1?.username == e2?.username &&
        e1?.role == e2?.role &&
        e1?.licenseNumber == e2?.licenseNumber &&
        e1?.experience == e2?.experience &&
        e1?.ambulanceNumber == e2?.ambulanceNumber &&
        e1?.emergencyCname == e2?.emergencyCname &&
        e1?.emergencyNumber == e2?.emergencyNumber &&
        e1?.profileComplete == e2?.profileComplete &&
        e1?.status == e2?.status &&
        e1?.licensePhoto == e2?.licensePhoto;
  }

  @override
  int hash(UserCollectionRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.password,
        e?.username,
        e?.role,
        e?.licenseNumber,
        e?.experience,
        e?.ambulanceNumber,
        e?.emergencyCname,
        e?.emergencyNumber,
        e?.profileComplete,
        e?.status,
        e?.licensePhoto
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCollectionRecord;
}
