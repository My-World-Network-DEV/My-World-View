import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';



import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicUserInteractionRecord extends FirestoreRecord {
  TopicUserInteractionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refUser" field.
  DocumentReference? _refUser;
  DocumentReference? get refUser => _refUser;
  bool hasRefUser() => _refUser != null;

  // "topicUserViewed" field.
  bool? _topicUserViewed;
  bool get topicUserViewed => _topicUserViewed ?? false;
  bool hasTopicUserViewed() => _topicUserViewed != null;

  // "topicUserFirstViewed" field.
  DateTime? _topicUserFirstViewed;
  DateTime? get topicUserFirstViewed => _topicUserFirstViewed;
  bool hasTopicUserFirstViewed() => _topicUserFirstViewed != null;

  // "topicUserLastViewed" field.
  DateTime? _topicUserLastViewed;
  DateTime? get topicUserLastViewed => _topicUserLastViewed;
  bool hasTopicUserLastViewed() => _topicUserLastViewed != null;

  // "topicUserViewedCount" field.
  int? _topicUserViewedCount;
  int get topicUserViewedCount => _topicUserViewedCount ?? 0;
  bool hasTopicUserViewedCount() => _topicUserViewedCount != null;

  // "topicUserLiked" field.
  bool? _topicUserLiked;
  bool get topicUserLiked => _topicUserLiked ?? false;
  bool hasTopicUserLiked() => _topicUserLiked != null;

  // "topicUserLikedTime" field.
  DateTime? _topicUserLikedTime;
  DateTime? get topicUserLikedTime => _topicUserLikedTime;
  bool hasTopicUserLikedTime() => _topicUserLikedTime != null;

  // "topicUserDisliked" field.
  bool? _topicUserDisliked;
  bool get topicUserDisliked => _topicUserDisliked ?? false;
  bool hasTopicUserDisliked() => _topicUserDisliked != null;

  // "topicUserDislikedTime" field.
  DateTime? _topicUserDislikedTime;
  DateTime? get topicUserDislikedTime => _topicUserDislikedTime;
  bool hasTopicUserDislikedTime() => _topicUserDislikedTime != null;

  // "topicUserFollowed" field.
  bool? _topicUserFollowed;
  bool get topicUserFollowed => _topicUserFollowed ?? false;
  bool hasTopicUserFollowed() => _topicUserFollowed != null;

  // "topicUserFollowedTime" field.
  DateTime? _topicUserFollowedTime;
  DateTime? get topicUserFollowedTime => _topicUserFollowedTime;
  bool hasTopicUserFollowedTime() => _topicUserFollowedTime != null;

  // "topicUserShared" field.
  bool? _topicUserShared;
  bool get topicUserShared => _topicUserShared ?? false;
  bool hasTopicUserShared() => _topicUserShared != null;

  // "topicUserSharedTime" field.
  DateTime? _topicUserSharedTime;
  DateTime? get topicUserSharedTime => _topicUserSharedTime;
  bool hasTopicUserSharedTime() => _topicUserSharedTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refUser = snapshotData['refUser'] as DocumentReference?;
    _topicUserViewed = snapshotData['topicUserViewed'] as bool?;
    _topicUserFirstViewed = snapshotData['topicUserFirstViewed'] as DateTime?;
    _topicUserLastViewed = snapshotData['topicUserLastViewed'] as DateTime?;
    _topicUserViewedCount =
        castToType<int>(snapshotData['topicUserViewedCount']);
    _topicUserLiked = snapshotData['topicUserLiked'] as bool?;
    _topicUserLikedTime = snapshotData['topicUserLikedTime'] as DateTime?;
    _topicUserDisliked = snapshotData['topicUserDisliked'] as bool?;
    _topicUserDislikedTime = snapshotData['topicUserDislikedTime'] as DateTime?;
    _topicUserFollowed = snapshotData['topicUserFollowed'] as bool?;
    _topicUserFollowedTime = snapshotData['topicUserFollowedTime'] as DateTime?;
    _topicUserShared = snapshotData['topicUserShared'] as bool?;
    _topicUserSharedTime = snapshotData['topicUserSharedTime'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Topic_User_Interaction')
          : FirebaseFirestore.instance
              .collectionGroup('Topic_User_Interaction');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Topic_User_Interaction').doc(id);

  static Stream<TopicUserInteractionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => TopicUserInteractionRecord.fromSnapshot(s));

  static Future<TopicUserInteractionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TopicUserInteractionRecord.fromSnapshot(s));

  static TopicUserInteractionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TopicUserInteractionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicUserInteractionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicUserInteractionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicUserInteractionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicUserInteractionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicUserInteractionRecordData({
  DocumentReference? refUser,
  bool? topicUserViewed,
  DateTime? topicUserFirstViewed,
  DateTime? topicUserLastViewed,
  int? topicUserViewedCount,
  bool? topicUserLiked,
  DateTime? topicUserLikedTime,
  bool? topicUserDisliked,
  DateTime? topicUserDislikedTime,
  bool? topicUserFollowed,
  DateTime? topicUserFollowedTime,
  bool? topicUserShared,
  DateTime? topicUserSharedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refUser': refUser,
      'topicUserViewed': topicUserViewed,
      'topicUserFirstViewed': topicUserFirstViewed,
      'topicUserLastViewed': topicUserLastViewed,
      'topicUserViewedCount': topicUserViewedCount,
      'topicUserLiked': topicUserLiked,
      'topicUserLikedTime': topicUserLikedTime,
      'topicUserDisliked': topicUserDisliked,
      'topicUserDislikedTime': topicUserDislikedTime,
      'topicUserFollowed': topicUserFollowed,
      'topicUserFollowedTime': topicUserFollowedTime,
      'topicUserShared': topicUserShared,
      'topicUserSharedTime': topicUserSharedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicUserInteractionRecordDocumentEquality
    implements Equality<TopicUserInteractionRecord> {
  const TopicUserInteractionRecordDocumentEquality();

  @override
  bool equals(TopicUserInteractionRecord? e1, TopicUserInteractionRecord? e2) {
    return e1?.refUser == e2?.refUser &&
        e1?.topicUserViewed == e2?.topicUserViewed &&
        e1?.topicUserFirstViewed == e2?.topicUserFirstViewed &&
        e1?.topicUserLastViewed == e2?.topicUserLastViewed &&
        e1?.topicUserViewedCount == e2?.topicUserViewedCount &&
        e1?.topicUserLiked == e2?.topicUserLiked &&
        e1?.topicUserLikedTime == e2?.topicUserLikedTime &&
        e1?.topicUserDisliked == e2?.topicUserDisliked &&
        e1?.topicUserDislikedTime == e2?.topicUserDislikedTime &&
        e1?.topicUserFollowed == e2?.topicUserFollowed &&
        e1?.topicUserFollowedTime == e2?.topicUserFollowedTime &&
        e1?.topicUserShared == e2?.topicUserShared &&
        e1?.topicUserSharedTime == e2?.topicUserSharedTime;
  }

  @override
  int hash(TopicUserInteractionRecord? e) => const ListEquality().hash([
        e?.refUser,
        e?.topicUserViewed,
        e?.topicUserFirstViewed,
        e?.topicUserLastViewed,
        e?.topicUserViewedCount,
        e?.topicUserLiked,
        e?.topicUserLikedTime,
        e?.topicUserDisliked,
        e?.topicUserDislikedTime,
        e?.topicUserFollowed,
        e?.topicUserFollowedTime,
        e?.topicUserShared,
        e?.topicUserSharedTime
      ]);

  @override
  bool isValidKey(Object? o) => o is TopicUserInteractionRecord;
}
