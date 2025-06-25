import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/home_page/header_home_page/header_home_page_widget.dart';
import '/main/pages/home_page/home_page_forum_select_component/home_page_forum_select_component_widget.dart';
import '/main/templates/navbar_main_component/navbar_main_component_widget.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool toggleDrawerOpen = false;

  String stringCurrentPage = 'Home';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for TopicOptionsComponent.
  late HomePageForumSelectComponentModel topicOptionsComponentModel;
  // Model for IssueOptionsComponent.
  late HomePageForumSelectComponentModel issueOptionsComponentModel;
  // Model for MotionOptionsComponent.
  late HomePageForumSelectComponentModel motionOptionsComponentModel;
  // Model for PositionOptionsComponent.
  late HomePageForumSelectComponentModel positionOptionsComponentModel;
  // Model for DebateOptionsComponent.
  late HomePageForumSelectComponentModel debateOptionsComponentModel;
  // Model for SolutionOptionsComponent.
  late HomePageForumSelectComponentModel solutionOptionsComponentModel;
  // Model for Navbar_Main_Component component.
  late NavbarMainComponentModel navbarMainComponentModel;
  // Model for Header_Home_Page component.
  late HeaderHomePageModel headerHomePageModel;

  @override
  void initState(BuildContext context) {
    topicOptionsComponentModel =
        createModel(context, () => HomePageForumSelectComponentModel());
    issueOptionsComponentModel =
        createModel(context, () => HomePageForumSelectComponentModel());
    motionOptionsComponentModel =
        createModel(context, () => HomePageForumSelectComponentModel());
    positionOptionsComponentModel =
        createModel(context, () => HomePageForumSelectComponentModel());
    debateOptionsComponentModel =
        createModel(context, () => HomePageForumSelectComponentModel());
    solutionOptionsComponentModel =
        createModel(context, () => HomePageForumSelectComponentModel());
    navbarMainComponentModel =
        createModel(context, () => NavbarMainComponentModel());
    headerHomePageModel = createModel(context, () => HeaderHomePageModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    topicOptionsComponentModel.dispose();
    issueOptionsComponentModel.dispose();
    motionOptionsComponentModel.dispose();
    positionOptionsComponentModel.dispose();
    debateOptionsComponentModel.dispose();
    solutionOptionsComponentModel.dispose();
    navbarMainComponentModel.dispose();
    headerHomePageModel.dispose();
  }
}
