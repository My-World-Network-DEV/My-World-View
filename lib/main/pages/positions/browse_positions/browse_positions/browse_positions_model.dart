import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/positions/browse_positions/position_card/position_card_widget.dart';
import '/main/templates/header_back_component/header_back_component_widget.dart';
import '/main/templates/navbar_main_component/navbar_main_component_widget.dart';
import 'browse_positions_widget.dart' show BrowsePositionsWidget;
import 'package:flutter/material.dart';

class BrowsePositionsModel extends FlutterFlowModel<BrowsePositionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for PositionCard component.
  late PositionCardModel positionCardModel;
  // Model for Header_Back_Component component.
  late HeaderBackComponentModel headerBackComponentModel;
  // Model for Navbar_Main_Component component.
  late NavbarMainComponentModel navbarMainComponentModel;

  @override
  void initState(BuildContext context) {
    positionCardModel = createModel(context, () => PositionCardModel());
    headerBackComponentModel =
        createModel(context, () => HeaderBackComponentModel());
    navbarMainComponentModel =
        createModel(context, () => NavbarMainComponentModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    positionCardModel.dispose();
    headerBackComponentModel.dispose();
    navbarMainComponentModel.dispose();
  }
}
