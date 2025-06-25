import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'header_expand_component_widget.dart' show HeaderExpandComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HeaderExpandComponentModel
    extends FlutterFlowModel<HeaderExpandComponentWidget> {
  ///  Local state fields for this component.

  String? stringPageType;

  List<String> listFilterCategories = [];
  void addToListFilterCategories(String item) => listFilterCategories.add(item);
  void removeFromListFilterCategories(String item) =>
      listFilterCategories.remove(item);
  void removeAtIndexFromListFilterCategories(int index) =>
      listFilterCategories.removeAt(index);
  void insertAtIndexInListFilterCategories(int index, String item) =>
      listFilterCategories.insert(index, item);
  void updateListFilterCategoriesAtIndex(
          int index, Function(String) updateFn) =>
      listFilterCategories[index] = updateFn(listFilterCategories[index]);

  String? stringSearchedTopic;

  bool toggleExpandable = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for TopicSearchTextField widget.
  FocusNode? topicSearchTextFieldFocusNode;
  TextEditingController? topicSearchTextFieldTextController;
  String? Function(BuildContext, String?)?
      topicSearchTextFieldTextControllerValidator;
  // State field(s) for FilterByDropDown widget.
  List<String>? filterByDropDownValue;
  FormFieldController<List<String>>? filterByDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    topicSearchTextFieldFocusNode?.dispose();
    topicSearchTextFieldTextController?.dispose();
  }
}
