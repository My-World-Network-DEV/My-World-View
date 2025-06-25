// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListCategoriesStruct extends FFFirebaseStruct {
  ListCategoriesStruct({
    List<String>? titleCategories,
    List<int>? numberCategories,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _titleCategories = titleCategories,
        _numberCategories = numberCategories,
        super(firestoreUtilData);

  // "titleCategories" field.
  List<String>? _titleCategories;
  List<String> get titleCategories => _titleCategories ?? const [];
  set titleCategories(List<String>? val) => _titleCategories = val;

  void updateTitleCategories(Function(List<String>) updateFn) {
    updateFn(_titleCategories ??= []);
  }

  bool hasTitleCategories() => _titleCategories != null;

  // "numberCategories" field.
  List<int>? _numberCategories;
  List<int> get numberCategories => _numberCategories ?? const [];
  set numberCategories(List<int>? val) => _numberCategories = val;

  void updateNumberCategories(Function(List<int>) updateFn) {
    updateFn(_numberCategories ??= []);
  }

  bool hasNumberCategories() => _numberCategories != null;

  static ListCategoriesStruct fromMap(Map<String, dynamic> data) =>
      ListCategoriesStruct(
        titleCategories: getDataList(data['titleCategories']),
        numberCategories: getDataList(data['numberCategories']),
      );

  static ListCategoriesStruct? maybeFromMap(dynamic data) => data is Map
      ? ListCategoriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'titleCategories': _titleCategories,
        'numberCategories': _numberCategories,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'titleCategories': serializeParam(
          _titleCategories,
          ParamType.String,
          isList: true,
        ),
        'numberCategories': serializeParam(
          _numberCategories,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static ListCategoriesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListCategoriesStruct(
        titleCategories: deserializeParam<String>(
          data['titleCategories'],
          ParamType.String,
          true,
        ),
        numberCategories: deserializeParam<int>(
          data['numberCategories'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'ListCategoriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListCategoriesStruct &&
        listEquality.equals(titleCategories, other.titleCategories) &&
        listEquality.equals(numberCategories, other.numberCategories);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([titleCategories, numberCategories]);
}

ListCategoriesStruct createListCategoriesStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListCategoriesStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListCategoriesStruct? updateListCategoriesStruct(
  ListCategoriesStruct? listCategories, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listCategories
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListCategoriesStructData(
  Map<String, dynamic> firestoreData,
  ListCategoriesStruct? listCategories,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listCategories == null) {
    return;
  }
  if (listCategories.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listCategories.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listCategoriesData =
      getListCategoriesFirestoreData(listCategories, forFieldValue);
  final nestedData =
      listCategoriesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listCategories.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListCategoriesFirestoreData(
  ListCategoriesStruct? listCategories, [
  bool forFieldValue = false,
]) {
  if (listCategories == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listCategories.toMap());

  // Add any Firestore field values
  listCategories.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListCategoriesListFirestoreData(
  List<ListCategoriesStruct>? listCategoriess,
) =>
    listCategoriess
        ?.map((e) => getListCategoriesFirestoreData(e, true))
        .toList() ??
    [];
