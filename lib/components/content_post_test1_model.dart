import '/flutter_flow/flutter_flow_util.dart';
import 'content_post_test1_widget.dart' show ContentPostTest1Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ContentPostTest1Model extends FlutterFlowModel<ContentPostTest1Widget> {
  ///  Local state fields for this component.

  bool toggleMedia = false;

  bool toggleImageMedia = false;

  bool toggleVideoMedia = false;

  String? pathImageMedia;

  String? pathVideoMedia;

  bool toggleLiked = false;

  bool toggleUnliked = false;

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
