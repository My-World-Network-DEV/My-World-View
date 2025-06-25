import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/issues/browse_issues/issue_card_simple/issue_card_simple_widget.dart';
import 'topic_card_top_issues_component_widget.dart'
    show TopicCardTopIssuesComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class TopicCardTopIssuesComponentModel
    extends FlutterFlowModel<TopicCardTopIssuesComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for IssueCardSimple component.
  late IssueCardSimpleModel issueCardSimpleModel;

  @override
  void initState(BuildContext context) {
    issueCardSimpleModel = createModel(context, () => IssueCardSimpleModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    issueCardSimpleModel.dispose();
  }
}
