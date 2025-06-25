import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/issues/browse_issues/issue_card/issue_card_widget.dart';
import 'browse_issues_widget.dart' show BrowseIssuesWidget;
import 'package:flutter/material.dart';

class BrowseIssuesModel extends FlutterFlowModel<BrowseIssuesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for IssueCard component.
  late IssueCardModel issueCardModel;

  @override
  void initState(BuildContext context) {
    issueCardModel = createModel(context, () => IssueCardModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    issueCardModel.dispose();
  }
}
