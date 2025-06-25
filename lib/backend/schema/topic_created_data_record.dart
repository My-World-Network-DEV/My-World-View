import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';



import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicCreatedDataRecord extends FirestoreRecord {
  TopicCreatedDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "topicCreatedAt" field.
  DateTime? _topicCreatedAt;
  DateTime? get topicCreatedAt => _topicCreatedAt;
  bool hasTopicCreatedAt() => _topicCreatedAt != null;

  // "topicAICreated" field.
  bool? _topicAICreated;
  bool get topicAICreated => _topicAICreated ?? false;
  bool hasTopicAICreated() => _topicAICreated != null;

  // "topicUserCreated" field.
  bool? _topicUserCreated;
  bool get topicUserCreated => _topicUserCreated ?? false;
  bool hasTopicUserCreated() => _topicUserCreated != null;

  // "topicCreatedByUser" field.
  DocumentReference? _topicCreatedByUser;
  DocumentReference? get topicCreatedByUser => _topicCreatedByUser;
  bool hasTopicCreatedByUser() => _topicCreatedByUser != null;

  // "topicDevCreated" field.
  bool? _topicDevCreated;
  bool get topicDevCreated => _topicDevCreated ?? false;
  bool hasTopicDevCreated() => _topicDevCreated != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _topicCreatedAt = snapshotData['topicCreatedAt'] as DateTime?;
    _topicAICreated = snapshotData['topicAICreated'] as bool?;
    _topicUserCreated = snapshotData['topicUserCreated'] as bool?;
    _topicCreatedByUser =
        snapshotData['topicCreatedByUser'] as DocumentReference?;
    _topicDevCreated = snapshotData['topicDevCreated'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Topic_Created_Data')
          : FirebaseFirestore.instance.collectionGroup('Topic_Created_Data');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Topic_Created_Data').doc(id);

  static Stream<TopicCreatedDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicCreatedDataRecord.fromSnapshot(s));

  static Future<TopicCreatedDataRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TopicCreatedDataRecord.fromSnapshot(s));

  static TopicCreatedDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TopicCreatedDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicCreatedDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicCreatedDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicCreatedDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicCreatedDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicCreatedDataRecordData({
  DateTime? topicCreatedAt,
  bool? topicAICreated,
  bool? topicUserCreated,
  DocumentReference? topicCreatedByUser,
  bool? topicDevCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'topicCreatedAt': topicCreatedAt,
      'topicAICreated': topicAICreated,
      'topicUserCreated': topicUserCreated,
      'topicCreatedByUser': topicCreatedByUser,
      'topicDevCreated': topicDevCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicCreatedDataRecordDocumentEquality
    implements Equality<TopicCreatedDataRecord> {
  const TopicCreatedDataRecordDocumentEquality();

  @override
  bool equals(TopicCreatedDataRecord? e1, TopicCreatedDataRecord? e2) {
    return e1?.topicCreatedAt == e2?.topicCreatedAt &&
        e1?.topicAICreated == e2?.topicAICreated &&
        e1?.topicUserCreated == e2?.topicUserCreated &&
        e1?.topicCreatedByUser == e2?.topicCreatedByUser &&
        e1?.topicDevCreated == e2?.topicDevCreated;
  }

  @override
  int hash(TopicCreatedDataRecord? e) => const ListEquality().hash([
        e?.topicCreatedAt,
        e?.topicAICreated,
        e?.topicUserCreated,
        e?.topicCreatedByUser,
        e?.topicDevCreated
      ]);

  @override
  bool isValidKey(Object? o) => o is TopicCreatedDataRecord;
}
