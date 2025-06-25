import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'categories_for_browse_component_widget.dart'
    show CategoriesForBrowseComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CategoriesForBrowseComponentModel
    extends FlutterFlowModel<CategoriesForBrowseComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CategoriesForBrowseExpandable widget.
  late ExpandableController categoriesForBrowseExpandableExpandableController;

  // State field(s) for CategoriesForBrowseChoiceChips widget.
  FormFieldController<List<String>>?
      categoriesForBrowseChoiceChipsValueController;
  List<String>? get categoriesForBrowseChoiceChipsValues =>
      categoriesForBrowseChoiceChipsValueController?.value;
  set categoriesForBrowseChoiceChipsValues(List<String>? val) =>
      categoriesForBrowseChoiceChipsValueController?.value = val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    categoriesForBrowseExpandableExpandableController.dispose();
  }
}
