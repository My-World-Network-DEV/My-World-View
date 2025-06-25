import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';



import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicTrendingRecord extends FirestoreRecord {
  TopicTrendingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "topicIsTrending" field.
  bool? _topicIsTrending;
  bool get topicIsTrending => _topicIsTrending ?? false;
  bool hasTopicIsTrending() => _topicIsTrending != null;

  // "topicTrendingScore" field.
  int? _topicTrendingScore;
  int get topicTrendingScore => _topicTrendingScore ?? 0;
  bool hasTopicTrendingScore() => _topicTrendingScore != null;

  // "topicTrendingRank" field.
  int? _topicTrendingRank;
  int get topicTrendingRank => _topicTrendingRank ?? 0;
  bool hasTopicTrendingRank() => _topicTrendingRank != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _topicIsTrending = snapshotData['topicIsTrending'] as bool?;
    _topicTrendingScore = castToType<int>(snapshotData['topicTrendingScore']);
    _topicTrendingRank = castToType<int>(snapshotData['topicTrendingRank']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Topic_Trending')
          : FirebaseFirestore.instance.collectionGroup('Topic_Trending');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Topic_Trending').doc(id);

  static Stream<TopicTrendingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicTrendingRecord.fromSnapshot(s));

  static Future<TopicTrendingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TopicTrendingRecord.fromSnapshot(s));

  static TopicTrendingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TopicTrendingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicTrendingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicTrendingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicTrendingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicTrendingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicTrendingRecordData({
  bool? topicIsTrending,
  int? topicTrendingScore,
  int? topicTrendingRank,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'topicIsTrending': topicIsTrending,
      'topicTrendingScore': topicTrendingScore,
      'topicTrendingRank': topicTrendingRank,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicTrendingRecordDocumentEquality
    implements Equality<TopicTrendingRecord> {
  const TopicTrendingRecordDocumentEquality();

  @override
  bool equals(TopicTrendingRecord? e1, TopicTrendingRecord? e2) {
    return e1?.topicIsTrending == e2?.topicIsTrending &&
        e1?.topicTrendingScore == e2?.topicTrendingScore &&
        e1?.topicTrendingRank == e2?.topicTrendingRank;
  }

  @override
  int hash(TopicTrendingRecord? e) => const ListEquality()
      .hash([e?.topicIsTrending, e?.topicTrendingScore, e?.topicTrendingRank]);

  @override
  bool isValidKey(Object? o) => o is TopicTrendingRecord;
}
