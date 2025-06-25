import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';



import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicDeletedDataRecord extends FirestoreRecord {
  TopicDeletedDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "topicDeletedAt" field.
  DateTime? _topicDeletedAt;
  DateTime? get topicDeletedAt => _topicDeletedAt;
  bool hasTopicDeletedAt() => _topicDeletedAt != null;

  // "topicTitle" field.
  String? _topicTitle;
  String get topicTitle => _topicTitle ?? '';
  bool hasTopicTitle() => _topicTitle != null;

  // "topicDescription" field.
  String? _topicDescription;
  String get topicDescription => _topicDescription ?? '';
  bool hasTopicDescription() => _topicDescription != null;

  // "topicDeletionReason" field.
  String? _topicDeletionReason;
  String get topicDeletionReason => _topicDeletionReason ?? '';
  bool hasTopicDeletionReason() => _topicDeletionReason != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _topicDeletedAt = snapshotData['topicDeletedAt'] as DateTime?;
    _topicTitle = snapshotData['topicTitle'] as String?;
    _topicDescription = snapshotData['topicDescription'] as String?;
    _topicDeletionReason = snapshotData['topicDeletionReason'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Topic_Deleted_Data')
          : FirebaseFirestore.instance.collectionGroup('Topic_Deleted_Data');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Topic_Deleted_Data').doc(id);

  static Stream<TopicDeletedDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicDeletedDataRecord.fromSnapshot(s));

  static Future<TopicDeletedDataRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TopicDeletedDataRecord.fromSnapshot(s));

  static TopicDeletedDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TopicDeletedDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicDeletedDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicDeletedDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicDeletedDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicDeletedDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicDeletedDataRecordData({
  DateTime? topicDeletedAt,
  String? topicTitle,
  String? topicDescription,
  String? topicDeletionReason,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'topicDeletedAt': topicDeletedAt,
      'topicTitle': topicTitle,
      'topicDescription': topicDescription,
      'topicDeletionReason': topicDeletionReason,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicDeletedDataRecordDocumentEquality
    implements Equality<TopicDeletedDataRecord> {
  const TopicDeletedDataRecordDocumentEquality();

  @override
  bool equals(TopicDeletedDataRecord? e1, TopicDeletedDataRecord? e2) {
    return e1?.topicDeletedAt == e2?.topicDeletedAt &&
        e1?.topicTitle == e2?.topicTitle &&
        e1?.topicDescription == e2?.topicDescription &&
        e1?.topicDeletionReason == e2?.topicDeletionReason;
  }

  @override
  int hash(TopicDeletedDataRecord? e) => const ListEquality().hash([
        e?.topicDeletedAt,
        e?.topicTitle,
        e?.topicDescription,
        e?.topicDeletionReason
      ]);

  @override
  bool isValidKey(Object? o) => o is TopicDeletedDataRecord;
}
