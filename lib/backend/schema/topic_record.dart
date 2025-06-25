import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';



import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicRecord extends FirestoreRecord {
  TopicRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "topicTitle" field.
  String? _topicTitle;
  String get topicTitle => _topicTitle ?? '';
  bool hasTopicTitle() => _topicTitle != null;

  // "topicCreatedAt" field.
  DateTime? _topicCreatedAt;
  DateTime? get topicCreatedAt => _topicCreatedAt;
  bool hasTopicCreatedAt() => _topicCreatedAt != null;

  // "topicCategoriesList" field.
  List<String>? _topicCategoriesList;
  List<String> get topicCategoriesList => _topicCategoriesList ?? const [];
  bool hasTopicCategoriesList() => _topicCategoriesList != null;

  // "topicUpvoteNumber" field.
  int? _topicUpvoteNumber;
  int get topicUpvoteNumber => _topicUpvoteNumber ?? 0;
  bool hasTopicUpvoteNumber() => _topicUpvoteNumber != null;

  // "topicDownvoteNumber" field.
  int? _topicDownvoteNumber;
  int get topicDownvoteNumber => _topicDownvoteNumber ?? 0;
  bool hasTopicDownvoteNumber() => _topicDownvoteNumber != null;

  void _initializeFields() {
    _topicTitle = snapshotData['topicTitle'] as String?;
    _topicCreatedAt = snapshotData['topicCreatedAt'] as DateTime?;
    _topicCategoriesList = getDataList(snapshotData['topicCategoriesList']);
    _topicUpvoteNumber = castToType<int>(snapshotData['topicUpvoteNumber']);
    _topicDownvoteNumber = castToType<int>(snapshotData['topicDownvoteNumber']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Topic');

  static Stream<TopicRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicRecord.fromSnapshot(s));

  static Future<TopicRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TopicRecord.fromSnapshot(s));

  static TopicRecord fromSnapshot(DocumentSnapshot snapshot) => TopicRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicRecordData({
  String? topicTitle,
  DateTime? topicCreatedAt,
  int? topicUpvoteNumber,
  int? topicDownvoteNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'topicTitle': topicTitle,
      'topicCreatedAt': topicCreatedAt,
      'topicUpvoteNumber': topicUpvoteNumber,
      'topicDownvoteNumber': topicDownvoteNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicRecordDocumentEquality implements Equality<TopicRecord> {
  const TopicRecordDocumentEquality();

  @override
  bool equals(TopicRecord? e1, TopicRecord? e2) {
    const listEquality = ListEquality();
    return e1?.topicTitle == e2?.topicTitle &&
        e1?.topicCreatedAt == e2?.topicCreatedAt &&
        listEquality.equals(e1?.topicCategoriesList, e2?.topicCategoriesList) &&
        e1?.topicUpvoteNumber == e2?.topicUpvoteNumber &&
        e1?.topicDownvoteNumber == e2?.topicDownvoteNumber;
  }

  @override
  int hash(TopicRecord? e) => const ListEquality().hash([
        e?.topicTitle,
        e?.topicCreatedAt,
        e?.topicCategoriesList,
        e?.topicUpvoteNumber,
        e?.topicDownvoteNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is TopicRecord;
}
