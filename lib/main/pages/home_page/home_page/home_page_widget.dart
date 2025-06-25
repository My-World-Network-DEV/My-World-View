import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/home_page/header_home_page/header_home_page_widget.dart';
import '/main/pages/home_page/home_page_forum_select_component/home_page_forum_select_component_widget.dart';
import '/main/templates/navbar_main_component/navbar_main_component_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 72.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment(0.0, 0),
                            child: TabBar(
                              isScrollable: true,
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  64.0, 0.0, 64.0, 0.0),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                              unselectedLabelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                              indicatorColor:
                                  FlutterFlowTheme.of(context).primary,
                              tabs: [
                                Tab(
                                  text: 'Home',
                                ),
                                Tab(
                                  text: 'For You',
                                ),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [() async {}, () async {}][i]();
                              },
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.topicOptionsComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: HomePageForumSelectComponentWidget(
                                        titleForum: 'Topics',
                                        colourFill: FlutterFlowTheme.of(context)
                                            .topicFill,
                                        colourOutline:
                                            FlutterFlowTheme.of(context)
                                                .topicOutline,
                                        colourHover:
                                            FlutterFlowTheme.of(context)
                                                .topicHover,
                                        colourAlt: FlutterFlowTheme.of(context)
                                            .topicAlt,
                                        numberNotificationMy: 9,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.issueOptionsComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: HomePageForumSelectComponentWidget(
                                        titleForum: 'Issues',
                                        colourFill: FlutterFlowTheme.of(context)
                                            .issuesFill,
                                        colourOutline:
                                            FlutterFlowTheme.of(context)
                                                .issuesOutline,
                                        colourHover:
                                            FlutterFlowTheme.of(context)
                                                .issuesHover,
                                        colourAlt: FlutterFlowTheme.of(context)
                                            .issuesAlt,
                                        numberNotificationMy: 45,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.motionOptionsComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: HomePageForumSelectComponentWidget(
                                        titleForum: 'Motions',
                                        colourFill: FlutterFlowTheme.of(context)
                                            .motionsFill,
                                        colourOutline:
                                            FlutterFlowTheme.of(context)
                                                .motionsOutline,
                                        colourHover:
                                            FlutterFlowTheme.of(context)
                                                .motionsHover,
                                        colourAlt: FlutterFlowTheme.of(context)
                                            .motionsAlt,
                                        numberNotificationMy: 69,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model:
                                          _model.positionOptionsComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: HomePageForumSelectComponentWidget(
                                        titleForum: 'Positions',
                                        colourFill: FlutterFlowTheme.of(context)
                                            .positionsFill,
                                        colourOutline:
                                            FlutterFlowTheme.of(context)
                                                .positionsOutline,
                                        colourHover:
                                            FlutterFlowTheme.of(context)
                                                .positionsHover,
                                        colourAlt: FlutterFlowTheme.of(context)
                                            .positionsAlt,
                                        numberNotificationMy: 99,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.debateOptionsComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: HomePageForumSelectComponentWidget(
                                        titleForum: 'Debates',
                                        colourFill: FlutterFlowTheme.of(context)
                                            .debateFill,
                                        colourOutline:
                                            FlutterFlowTheme.of(context)
                                                .debateOutline,
                                        colourHover:
                                            FlutterFlowTheme.of(context)
                                                .debateHover,
                                        colourAlt: FlutterFlowTheme.of(context)
                                            .debateAlt,
                                        numberNotificationMy: 27,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model:
                                          _model.solutionOptionsComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: HomePageForumSelectComponentWidget(
                                        titleForum: 'Solutions',
                                        colourFill: FlutterFlowTheme.of(context)
                                            .solutionsFill,
                                        colourOutline:
                                            FlutterFlowTheme.of(context)
                                                .solutionsOutline,
                                        colourHover:
                                            FlutterFlowTheme.of(context)
                                                .solutionsHover,
                                        colourAlt: FlutterFlowTheme.of(context)
                                            .solutionsAlt,
                                        numberNotificationMy: 80,
                                      ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 12.0))
                                      .addToStart(SizedBox(height: 12.0))
                                      .addToEnd(SizedBox(height: 12.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.navbarMainComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: NavbarMainComponentWidget(
                  toggleHomeIcon: true,
                  toggleBrowseIcon: false,
                  toggleCreateIcon: false,
                  toggleNotificationIcon: false,
                  toggleMessagesIcon: false,
                ),
              ),
              wrapWithModel(
                model: _model.headerHomePageModel,
                updateCallback: () => safeSetState(() {}),
                child: HeaderHomePageWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
