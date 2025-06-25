import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';



import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryRecord extends FirestoreRecord {
  CategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Category_Title" field.
  String? _categoryTitle;
  String get categoryTitle => _categoryTitle ?? '';
  bool hasCategoryTitle() => _categoryTitle != null;

  // "Category_Created_By_AI" field.
  bool? _categoryCreatedByAI;
  bool get categoryCreatedByAI => _categoryCreatedByAI ?? false;
  bool hasCategoryCreatedByAI() => _categoryCreatedByAI != null;

  // "Category_Created_At" field.
  DateTime? _categoryCreatedAt;
  DateTime? get categoryCreatedAt => _categoryCreatedAt;
  bool hasCategoryCreatedAt() => _categoryCreatedAt != null;

  // "Topic_REF" field.
  List<DocumentReference>? _topicREF;
  List<DocumentReference> get topicREF => _topicREF ?? const [];
  bool hasTopicREF() => _topicREF != null;

  // "CategoriesData" field.
  List<ListCategoriesStruct>? _categoriesData;
  List<ListCategoriesStruct> get categoriesData => _categoriesData ?? const [];
  bool hasCategoriesData() => _categoriesData != null;

  // "CategoriesList" field.
  List<String>? _categoriesList;
  List<String> get categoriesList => _categoriesList ?? const [];
  bool hasCategoriesList() => _categoriesList != null;

  void _initializeFields() {
    _categoryTitle = snapshotData['Category_Title'] as String?;
    _categoryCreatedByAI = snapshotData['Category_Created_By_AI'] as bool?;
    _categoryCreatedAt = snapshotData['Category_Created_At'] as DateTime?;
    _topicREF = getDataList(snapshotData['Topic_REF']);
    _categoriesData = getStructList(
      snapshotData['CategoriesData'],
      ListCategoriesStruct.fromMap,
    );
    _categoriesList = getDataList(snapshotData['CategoriesList']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Category');

  static Stream<CategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryRecord.fromSnapshot(s));

  static Future<CategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryRecord.fromSnapshot(s));

  static CategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoryRecordData({
  String? categoryTitle,
  bool? categoryCreatedByAI,
  DateTime? categoryCreatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Category_Title': categoryTitle,
      'Category_Created_By_AI': categoryCreatedByAI,
      'Category_Created_At': categoryCreatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoryRecordDocumentEquality implements Equality<CategoryRecord> {
  const CategoryRecordDocumentEquality();

  @override
  bool equals(CategoryRecord? e1, CategoryRecord? e2) {
    const listEquality = ListEquality();
    return e1?.categoryTitle == e2?.categoryTitle &&
        e1?.categoryCreatedByAI == e2?.categoryCreatedByAI &&
        e1?.categoryCreatedAt == e2?.categoryCreatedAt &&
        listEquality.equals(e1?.topicREF, e2?.topicREF) &&
        listEquality.equals(e1?.categoriesData, e2?.categoriesData) &&
        listEquality.equals(e1?.categoriesList, e2?.categoriesList);
  }

  @override
  int hash(CategoryRecord? e) => const ListEquality().hash([
        e?.categoryTitle,
        e?.categoryCreatedByAI,
        e?.categoryCreatedAt,
        e?.topicREF,
        e?.categoriesData,
        e?.categoriesList
      ]);

  @override
  bool isValidKey(Object? o) => o is CategoryRecord;
}
