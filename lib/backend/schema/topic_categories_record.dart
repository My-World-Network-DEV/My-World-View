import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';



import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicCategoriesRecord extends FirestoreRecord {
  TopicCategoriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "topicCategoryTitle" field.
  String? _topicCategoryTitle;
  String get topicCategoryTitle => _topicCategoryTitle ?? '';
  bool hasTopicCategoryTitle() => _topicCategoryTitle != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _topicCategoryTitle = snapshotData['topicCategoryTitle'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Topic_Categories')
          : FirebaseFirestore.instance.collectionGroup('Topic_Categories');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Topic_Categories').doc(id);

  static Stream<TopicCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicCategoriesRecord.fromSnapshot(s));

  static Future<TopicCategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TopicCategoriesRecord.fromSnapshot(s));

  static TopicCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TopicCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicCategoriesRecordData({
  String? topicCategoryTitle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'topicCategoryTitle': topicCategoryTitle,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicCategoriesRecordDocumentEquality
    implements Equality<TopicCategoriesRecord> {
  const TopicCategoriesRecordDocumentEquality();

  @override
  bool equals(TopicCategoriesRecord? e1, TopicCategoriesRecord? e2) {
    return e1?.topicCategoryTitle == e2?.topicCategoryTitle;
  }

  @override
  int hash(TopicCategoriesRecord? e) =>
      const ListEquality().hash([e?.topicCategoryTitle]);

  @override
  bool isValidKey(Object? o) => o is TopicCategoriesRecord;
}
