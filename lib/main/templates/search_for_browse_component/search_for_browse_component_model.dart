import '/flutter_flow/flutter_flow_util.dart';
import 'search_for_browse_component_widget.dart'
    show SearchForBrowseComponentWidget;
import 'package:flutter/material.dart';

class SearchForBrowseComponentModel
    extends FlutterFlowModel<SearchForBrowseComponentWidget> {
  ///  Local state fields for this component.

  String? stringSearch;

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
