import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';



import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IssueRecord extends FirestoreRecord {
  IssueRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "issueTitle" field.
  String? _issueTitle;
  String get issueTitle => _issueTitle ?? '';
  bool hasIssueTitle() => _issueTitle != null;

  void _initializeFields() {
    _issueTitle = snapshotData['issueTitle'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Issue');

  static Stream<IssueRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IssueRecord.fromSnapshot(s));

  static Future<IssueRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IssueRecord.fromSnapshot(s));

  static IssueRecord fromSnapshot(DocumentSnapshot snapshot) => IssueRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IssueRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IssueRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IssueRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IssueRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIssueRecordData({
  String? issueTitle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'issueTitle': issueTitle,
    }.withoutNulls,
  );

  return firestoreData;
}

class IssueRecordDocumentEquality implements Equality<IssueRecord> {
  const IssueRecordDocumentEquality();

  @override
  bool equals(IssueRecord? e1, IssueRecord? e2) {
    return e1?.issueTitle == e2?.issueTitle;
  }

  @override
  int hash(IssueRecord? e) => const ListEquality().hash([e?.issueTitle]);

  @override
  bool isValidKey(Object? o) => o is IssueRecord;
}
