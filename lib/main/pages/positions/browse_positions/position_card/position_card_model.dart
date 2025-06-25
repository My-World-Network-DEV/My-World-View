import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/positions/browse_positions/argument_components/top_argument_component/top_argument_component_widget.dart';
import '/main/pages/positions/browse_positions/evidence_components/top_evidence_component/top_evidence_component_widget.dart';
import '/main/pages/positions/browse_positions/positon_stance/positon_stance_widget.dart';
import 'position_card_widget.dart' show PositionCardWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PositionCardModel extends FlutterFlowModel<PositionCardWidget> {
  ///  Local state fields for this component.

  bool toggleContentionFav = false;

  int? numberContentionFavs;

  bool toggleContentionShare = false;

  bool toggleContentionFollowing = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for PositonStance.
  late PositonStanceModel positonStanceModel1;
  // Model for PositonStance.
  late PositonStanceModel positonStanceModel2;
  // State field(s) for ArgumentContentSimpleExpandable widget.
  late ExpandableController argumentContentSimpleExpandableExpandableController;

  // Model for TopArgumentComponent component.
  late TopArgumentComponentModel topArgumentComponentModel1;
  // Model for TopArgumentComponent component.
  late TopArgumentComponentModel topArgumentComponentModel2;
  // Model for TopArgumentComponent component.
  late TopArgumentComponentModel topArgumentComponentModel3;
  // State field(s) for EvidenceContentSimpleExpandable widget.
  late ExpandableController evidenceContentSimpleExpandableExpandableController;

  // Model for TopEvidenceComponent component.
  late TopEvidenceComponentModel topEvidenceComponentModel;

  @override
  void initState(BuildContext context) {
    positonStanceModel1 = createModel(context, () => PositonStanceModel());
    positonStanceModel2 = createModel(context, () => PositonStanceModel());
    topArgumentComponentModel1 =
        createModel(context, () => TopArgumentComponentModel());
    topArgumentComponentModel2 =
        createModel(context, () => TopArgumentComponentModel());
    topArgumentComponentModel3 =
        createModel(context, () => TopArgumentComponentModel());
    topEvidenceComponentModel =
        createModel(context, () => TopEvidenceComponentModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    positonStanceModel1.dispose();
    positonStanceModel2.dispose();
    argumentContentSimpleExpandableExpandableController.dispose();
    topArgumentComponentModel1.dispose();
    topArgumentComponentModel2.dispose();
    topArgumentComponentModel3.dispose();
    evidenceContentSimpleExpandableExpandableController.dispose();
    topEvidenceComponentModel.dispose();
  }
}
