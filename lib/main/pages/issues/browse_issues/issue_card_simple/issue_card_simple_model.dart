import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/issues/browse_issues/issue_importance_stance/issue_importance_stance_widget.dart';
import 'issue_card_simple_widget.dart' show IssueCardSimpleWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class IssueCardSimpleModel extends FlutterFlowModel<IssueCardSimpleWidget> {
  ///  Local state fields for this component.

  bool toggleIssueFav = false;

  int? numberIssueFavs;

  bool toggleIssueShare = false;

  bool toggleIssueFollowing = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for IssueImportanceStance component.
  late IssueImportanceStanceModel issueImportanceStanceModel;

  @override
  void initState(BuildContext context) {
    issueImportanceStanceModel =
        createModel(context, () => IssueImportanceStanceModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    issueImportanceStanceModel.dispose();
  }
}
