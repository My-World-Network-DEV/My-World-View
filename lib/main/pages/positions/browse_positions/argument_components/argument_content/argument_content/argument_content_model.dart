import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/positions/browse_positions/argument_components/argument_stance/argument_stance_widget.dart';
import 'argument_content_widget.dart' show ArgumentContentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ArgumentContentModel extends FlutterFlowModel<ArgumentContentWidget> {
  ///  Local state fields for this component.

  bool toggleArgumentFav = false;

  int? numberArgumentFavs;

  int? numberArgumentComment;

  bool toggleArgumentShare = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for ArgumentStance component.
  late ArgumentStanceModel argumentStanceModel1;
  // Model for ArgumentStance component.
  late ArgumentStanceModel argumentStanceModel2;

  @override
  void initState(BuildContext context) {
    argumentStanceModel1 = createModel(context, () => ArgumentStanceModel());
    argumentStanceModel2 = createModel(context, () => ArgumentStanceModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    argumentStanceModel1.dispose();
    argumentStanceModel2.dispose();
  }
}
