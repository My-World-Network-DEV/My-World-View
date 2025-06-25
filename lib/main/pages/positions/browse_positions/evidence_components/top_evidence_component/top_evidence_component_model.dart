import '/flutter_flow/flutter_flow_util.dart';
import 'top_evidence_component_widget.dart' show TopEvidenceComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class TopEvidenceComponentModel
    extends FlutterFlowModel<TopEvidenceComponentWidget> {
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
