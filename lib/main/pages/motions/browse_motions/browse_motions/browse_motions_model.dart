import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/motions/browse_motions/motion_card/motion_card_widget.dart';
import 'browse_motions_widget.dart' show BrowseMotionsWidget;
import 'package:flutter/material.dart';

class BrowseMotionsModel extends FlutterFlowModel<BrowseMotionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for MotionCard component.
  late MotionCardModel motionCardModel;

  @override
  void initState(BuildContext context) {
    motionCardModel = createModel(context, () => MotionCardModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    motionCardModel.dispose();
  }
}
