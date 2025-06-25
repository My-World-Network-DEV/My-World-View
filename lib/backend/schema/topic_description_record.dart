import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';



import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicDescriptionRecord extends FirestoreRecord {
  TopicDescriptionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "topicDescription" field.
  String? _topicDescription;
  String get topicDescription => _topicDescription ?? '';
  bool hasTopicDescription() => _topicDescription != null;

  // "topicDescriptionCreatedAt" field.
  DateTime? _topicDescriptionCreatedAt;
  DateTime? get topicDescriptionCreatedAt => _topicDescriptionCreatedAt;
  bool hasTopicDescriptionCreatedAt() => _topicDescriptionCreatedAt != null;

  // "topicDescriptionEditedAt" field.
  DateTime? _topicDescriptionEditedAt;
  DateTime? get topicDescriptionEditedAt => _topicDescriptionEditedAt;
  bool hasTopicDescriptionEditedAt() => _topicDescriptionEditedAt != null;

  // "topicDescriptionDeletedAt" field.
  DateTime? _topicDescriptionDeletedAt;
  DateTime? get topicDescriptionDeletedAt => _topicDescriptionDeletedAt;
  bool hasTopicDescriptionDeletedAt() => _topicDescriptionDeletedAt != null;

  // "topicDescriptionAICreated" field.
  bool? _topicDescriptionAICreated;
  bool get topicDescriptionAICreated => _topicDescriptionAICreated ?? false;
  bool hasTopicDescriptionAICreated() => _topicDescriptionAICreated != null;

  // "topicDescriptionUserCreated" field.
  bool? _topicDescriptionUserCreated;
  bool get topicDescriptionUserCreated => _topicDescriptionUserCreated ?? false;
  bool hasTopicDescriptionUserCreated() => _topicDescriptionUserCreated != null;

  // "topicDescriptionCreatedByUser" field.
  DocumentReference? _topicDescriptionCreatedByUser;
  DocumentReference? get topicDescriptionCreatedByUser =>
      _topicDescriptionCreatedByUser;
  bool hasTopicDescriptionCreatedByUser() =>
      _topicDescriptionCreatedByUser != null;

  // "topicDescriptionDevCreated" field.
  bool? _topicDescriptionDevCreated;
  bool get topicDescriptionDevCreated => _topicDescriptionDevCreated ?? false;
  bool hasTopicDescriptionDevCreated() => _topicDescriptionDevCreated != null;

  // "topicDescriptionIsActive" field.
  bool? _topicDescriptionIsActive;
  bool get topicDescriptionIsActive => _topicDescriptionIsActive ?? false;
  bool hasTopicDescriptionIsActive() => _topicDescriptionIsActive != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _topicDescription = snapshotData['topicDescription'] as String?;
    _topicDescriptionCreatedAt =
        snapshotData['topicDescriptionCreatedAt'] as DateTime?;
    _topicDescriptionEditedAt =
        snapshotData['topicDescriptionEditedAt'] as DateTime?;
    _topicDescriptionDeletedAt =
        snapshotData['topicDescriptionDeletedAt'] as DateTime?;
    _topicDescriptionAICreated =
        snapshotData['topicDescriptionAICreated'] as bool?;
    _topicDescriptionUserCreated =
        snapshotData['topicDescriptionUserCreated'] as bool?;
    _topicDescriptionCreatedByUser =
        snapshotData['topicDescriptionCreatedByUser'] as DocumentReference?;
    _topicDescriptionDevCreated =
        snapshotData['topicDescriptionDevCreated'] as bool?;
    _topicDescriptionIsActive =
        snapshotData['topicDescriptionIsActive'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Topic_Description')
          : FirebaseFirestore.instance.collectionGroup('Topic_Description');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Topic_Description').doc(id);

  static Stream<TopicDescriptionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicDescriptionRecord.fromSnapshot(s));

  static Future<TopicDescriptionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TopicDescriptionRecord.fromSnapshot(s));

  static TopicDescriptionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TopicDescriptionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicDescriptionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicDescriptionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicDescriptionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicDescriptionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicDescriptionRecordData({
  String? topicDescription,
  DateTime? topicDescriptionCreatedAt,
  DateTime? topicDescriptionEditedAt,
  DateTime? topicDescriptionDeletedAt,
  bool? topicDescriptionAICreated,
  bool? topicDescriptionUserCreated,
  DocumentReference? topicDescriptionCreatedByUser,
  bool? topicDescriptionDevCreated,
  bool? topicDescriptionIsActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'topicDescription': topicDescription,
      'topicDescriptionCreatedAt': topicDescriptionCreatedAt,
      'topicDescriptionEditedAt': topicDescriptionEditedAt,
      'topicDescriptionDeletedAt': topicDescriptionDeletedAt,
      'topicDescriptionAICreated': topicDescriptionAICreated,
      'topicDescriptionUserCreated': topicDescriptionUserCreated,
      'topicDescriptionCreatedByUser': topicDescriptionCreatedByUser,
      'topicDescriptionDevCreated': topicDescriptionDevCreated,
      'topicDescriptionIsActive': topicDescriptionIsActive,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicDescriptionRecordDocumentEquality
    implements Equality<TopicDescriptionRecord> {
  const TopicDescriptionRecordDocumentEquality();

  @override
  bool equals(TopicDescriptionRecord? e1, TopicDescriptionRecord? e2) {
    return e1?.topicDescription == e2?.topicDescription &&
        e1?.topicDescriptionCreatedAt == e2?.topicDescriptionCreatedAt &&
        e1?.topicDescriptionEditedAt == e2?.topicDescriptionEditedAt &&
        e1?.topicDescriptionDeletedAt == e2?.topicDescriptionDeletedAt &&
        e1?.topicDescriptionAICreated == e2?.topicDescriptionAICreated &&
        e1?.topicDescriptionUserCreated == e2?.topicDescriptionUserCreated &&
        e1?.topicDescriptionCreatedByUser ==
            e2?.topicDescriptionCreatedByUser &&
        e1?.topicDescriptionDevCreated == e2?.topicDescriptionDevCreated &&
        e1?.topicDescriptionIsActive == e2?.topicDescriptionIsActive;
  }

  @override
  int hash(TopicDescriptionRecord? e) => const ListEquality().hash([
        e?.topicDescription,
        e?.topicDescriptionCreatedAt,
        e?.topicDescriptionEditedAt,
        e?.topicDescriptionDeletedAt,
        e?.topicDescriptionAICreated,
        e?.topicDescriptionUserCreated,
        e?.topicDescriptionCreatedByUser,
        e?.topicDescriptionDevCreated,
        e?.topicDescriptionIsActive
      ]);

  @override
  bool isValidKey(Object? o) => o is TopicDescriptionRecord;
}
