import '/flutter_flow/flutter_flow_util.dart';
import 'issue_forum_page_widget.dart' show IssueForumPageWidget;
import 'package:flutter/material.dart';

class IssueForumPageModel extends FlutterFlowModel<IssueForumPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
