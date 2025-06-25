import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/topics/browse_topics/header_expand_component/header_expand_component_widget.dart';
import '/main/pages/topics/browse_topics/topic_card/topic_card_widget.dart';
import '/main/templates/navbar_main_component/navbar_main_component_widget.dart';
import 'browse_topics_widget.dart' show BrowseTopicsWidget;
import 'package:flutter/material.dart';

class BrowseTopicsModel extends FlutterFlowModel<BrowseTopicsWidget> {
  ///  Local state fields for this page.

  String? stringSearch;

  List<String> listSelectedCategories = [];
  void addToListSelectedCategories(String item) =>
      listSelectedCategories.add(item);
  void removeFromListSelectedCategories(String item) =>
      listSelectedCategories.remove(item);
  void removeAtIndexFromListSelectedCategories(int index) =>
      listSelectedCategories.removeAt(index);
  void insertAtIndexInListSelectedCategories(int index, String item) =>
      listSelectedCategories.insert(index, item);
  void updateListSelectedCategoriesAtIndex(
          int index, Function(String) updateFn) =>
      listSelectedCategories[index] = updateFn(listSelectedCategories[index]);

  String? stringSearchedTitle;

  ///  State fields for stateful widgets in this page.

  // Models for TopicCard dynamic component.
  late FlutterFlowDynamicModels<TopicCardModel> topicCardModels;
  // Model for Navbar_Main_Component component.
  late NavbarMainComponentModel navbarMainComponentModel;
  // Model for Header_Expand_Component component.
  late HeaderExpandComponentModel headerExpandComponentModel;

  @override
  void initState(BuildContext context) {
    topicCardModels = FlutterFlowDynamicModels(() => TopicCardModel());
    navbarMainComponentModel =
        createModel(context, () => NavbarMainComponentModel());
    headerExpandComponentModel =
        createModel(context, () => HeaderExpandComponentModel());
  }

  @override
  void dispose() {
    topicCardModels.dispose();
    navbarMainComponentModel.dispose();
    headerExpandComponentModel.dispose();
  }
}
