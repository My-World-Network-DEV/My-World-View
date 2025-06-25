import '/flutter_flow/flutter_flow_util.dart';
import 'top_argument_component_widget.dart' show TopArgumentComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class TopArgumentComponentModel
    extends FlutterFlowModel<TopArgumentComponentWidget> {
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
