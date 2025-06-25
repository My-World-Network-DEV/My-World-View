import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/motions/browse_motions/motion_position_stance/motion_position_stance_widget.dart';
import 'motion_card_widget.dart' show MotionCardWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MotionCardModel extends FlutterFlowModel<MotionCardWidget> {
  ///  Local state fields for this component.

  bool toggleMotionFav = false;

  int? numberMotionFavs;

  bool toggleMotionShare = false;

  bool toggleMotionFollowing = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for MotionPositionStance component.
  late MotionPositionStanceModel motionPositionStanceModel1;
  // Model for MotionPositionStance component.
  late MotionPositionStanceModel motionPositionStanceModel2;

  @override
  void initState(BuildContext context) {
    motionPositionStanceModel1 =
        createModel(context, () => MotionPositionStanceModel());
    motionPositionStanceModel2 =
        createModel(context, () => MotionPositionStanceModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    motionPositionStanceModel1.dispose();
    motionPositionStanceModel2.dispose();
  }
}
