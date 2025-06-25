import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _CategoriesREF =
          prefs.getString('ff_CategoriesREF')?.ref ?? _CategoriesREF;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _CategoriesREF =
      FirebaseFirestore.instance.doc('/Category/OxHQB4OntNeTLMFjtRsa');
  DocumentReference? get CategoriesREF => _CategoriesREF;
  set CategoriesREF(DocumentReference? value) {
    _CategoriesREF = value;
    value != null
        ? prefs.setString('ff_CategoriesREF', value.path)
        : prefs.remove('ff_CategoriesREF');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
