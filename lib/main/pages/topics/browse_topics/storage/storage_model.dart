import '/flutter_flow/flutter_flow_util.dart';
import 'storage_widget.dart' show StorageWidget;
import 'package:flutter/material.dart';

class StorageModel extends FlutterFlowModel<StorageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for BrowseSearchTextField widget.
  FocusNode? browseSearchTextFieldFocusNode;
  TextEditingController? browseSearchTextFieldTextController;
  String? Function(BuildContext, String?)?
      browseSearchTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    browseSearchTextFieldFocusNode?.dispose();
    browseSearchTextFieldTextController?.dispose();
  }
}
