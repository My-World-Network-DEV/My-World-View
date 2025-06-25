import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';



import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicEditedDataRecord extends FirestoreRecord {
  TopicEditedDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "topicEditedAt" field.
  DateTime? _topicEditedAt;
  DateTime? get topicEditedAt => _topicEditedAt;
  bool hasTopicEditedAt() => _topicEditedAt != null;

  // "topicAIEdited" field.
  bool? _topicAIEdited;
  bool get topicAIEdited => _topicAIEdited ?? false;
  bool hasTopicAIEdited() => _topicAIEdited != null;

  // "topicUserEdited" field.
  bool? _topicUserEdited;
  bool get topicUserEdited => _topicUserEdited ?? false;
  bool hasTopicUserEdited() => _topicUserEdited != null;

  // "topicEditedByUser" field.
  DocumentReference? _topicEditedByUser;
  DocumentReference? get topicEditedByUser => _topicEditedByUser;
  bool hasTopicEditedByUser() => _topicEditedByUser != null;

  // "topicDevEdited" field.
  bool? _topicDevEdited;
  bool get topicDevEdited => _topicDevEdited ?? false;
  bool hasTopicDevEdited() => _topicDevEdited != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _topicEditedAt = snapshotData['topicEditedAt'] as DateTime?;
    _topicAIEdited = snapshotData['topicAIEdited'] as bool?;
    _topicUserEdited = snapshotData['topicUserEdited'] as bool?;
    _topicEditedByUser =
        snapshotData['topicEditedByUser'] as DocumentReference?;
    _topicDevEdited = snapshotData['topicDevEdited'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Topic_Edited_Data')
          : FirebaseFirestore.instance.collectionGroup('Topic_Edited_Data');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Topic_Edited_Data').doc(id);

  static Stream<TopicEditedDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicEditedDataRecord.fromSnapshot(s));

  static Future<TopicEditedDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TopicEditedDataRecord.fromSnapshot(s));

  static TopicEditedDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TopicEditedDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicEditedDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicEditedDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicEditedDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicEditedDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicEditedDataRecordData({
  DateTime? topicEditedAt,
  bool? topicAIEdited,
  bool? topicUserEdited,
  DocumentReference? topicEditedByUser,
  bool? topicDevEdited,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'topicEditedAt': topicEditedAt,
      'topicAIEdited': topicAIEdited,
      'topicUserEdited': topicUserEdited,
      'topicEditedByUser': topicEditedByUser,
      'topicDevEdited': topicDevEdited,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicEditedDataRecordDocumentEquality
    implements Equality<TopicEditedDataRecord> {
  const TopicEditedDataRecordDocumentEquality();

  @override
  bool equals(TopicEditedDataRecord? e1, TopicEditedDataRecord? e2) {
    return e1?.topicEditedAt == e2?.topicEditedAt &&
        e1?.topicAIEdited == e2?.topicAIEdited &&
        e1?.topicUserEdited == e2?.topicUserEdited &&
        e1?.topicEditedByUser == e2?.topicEditedByUser &&
        e1?.topicDevEdited == e2?.topicDevEdited;
  }

  @override
  int hash(TopicEditedDataRecord? e) => const ListEquality().hash([
        e?.topicEditedAt,
        e?.topicAIEdited,
        e?.topicUserEdited,
        e?.topicEditedByUser,
        e?.topicDevEdited
      ]);

  @override
  bool isValidKey(Object? o) => o is TopicEditedDataRecord;
}
