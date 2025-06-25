import '/flutter_flow/flutter_flow_util.dart';
import '/main/templates/header_back_component/header_back_component_widget.dart';
import 'topic_forum_page_widget.dart' show TopicForumPageWidget;
import 'package:flutter/material.dart';

class TopicForumPageModel extends FlutterFlowModel<TopicForumPageWidget> {
  ///  Local state fields for this page.

  List<String> listMonths = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'June',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  void addToListMonths(String item) => listMonths.add(item);
  void removeFromListMonths(String item) => listMonths.remove(item);
  void removeAtIndexFromListMonths(int index) => listMonths.removeAt(index);
  void insertAtIndexInListMonths(int index, String item) =>
      listMonths.insert(index, item);
  void updateListMonthsAtIndex(int index, Function(String) updateFn) =>
      listMonths[index] = updateFn(listMonths[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for Header_Back_Component component.
  late HeaderBackComponentModel headerBackComponentModel;

  @override
  void initState(BuildContext context) {
    headerBackComponentModel =
        createModel(context, () => HeaderBackComponentModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    headerBackComponentModel.dispose();
  }
}
