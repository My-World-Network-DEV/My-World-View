import '/flutter_flow/flutter_flow_util.dart';
import 'issue_card_widget.dart' show IssueCardWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class IssueCardModel extends FlutterFlowModel<IssueCardWidget> {
  ///  Local state fields for this component.

  bool toggleIssueFav = false;

  int? numberIssueFavs;

  bool toggleIssueShare = false;

  bool toggleIssueFollowing = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
