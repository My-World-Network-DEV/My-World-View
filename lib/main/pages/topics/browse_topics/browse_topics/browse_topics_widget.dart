import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main/pages/topics/browse_topics/header_expand_component/header_expand_component_widget.dart';
import '/main/pages/topics/browse_topics/topic_card/topic_card_widget.dart';
import '/main/templates/navbar_main_component/navbar_main_component_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'browse_topics_model.dart';
export 'browse_topics_model.dart';

class BrowseTopicsWidget extends StatefulWidget {
  const BrowseTopicsWidget({super.key});

  static String routeName = 'Browse_Topics';
  static String routePath = '/browseTopics';

  @override
  State<BrowseTopicsWidget> createState() => _BrowseTopicsWidgetState();
}

class _BrowseTopicsWidgetState extends State<BrowseTopicsWidget> {
  late BrowseTopicsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrowseTopicsModel());

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
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: StreamBuilder<List<TopicRecord>>(
                      stream: queryTopicRecord(
                        queryBuilder: (topicRecord) => topicRecord
                            .whereArrayContainsAny(
                                'topicCategoriesList',
                                _model.headerExpandComponentModel
                                            .listFilterCategories !=
                                        ''
                                    ? _model.headerExpandComponentModel
                                        .listFilterCategories
                                    : null)
                            .where(
                              'topicTitle',
                              isEqualTo: _model.headerExpandComponentModel
                                          .stringSearchedTopic !=
                                      ''
                                  ? _model.headerExpandComponentModel
                                      .stringSearchedTopic
                                  : null,
                            ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 164.0, 0.0, 164.0),
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                        List<TopicRecord>
                            listAllTopicsContainerTopicRecordList =
                            snapshot.data!;

                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              final listTopics =
                                  listAllTopicsContainerTopicRecordList
                                      .toList();

                              return ListView.separated(
                                padding: EdgeInsets.fromLTRB(
                                  0,
                                  68.0,
                                  0,
                                  64.0,
                                ),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listTopics.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 4.0),
                                itemBuilder: (context, listTopicsIndex) {
                                  final listTopicsItem =
                                      listTopics[listTopicsIndex];
                                  return StreamBuilder<
                                      List<TopicUserInteractionRecord>>(
                                    stream: queryTopicUserInteractionRecord(
                                      parent: listTopicsItem.reference,
                                      queryBuilder:
                                          (topicUserInteractionRecord) =>
                                              topicUserInteractionRecord.where(
                                        'refUser',
                                        isEqualTo: currentUserReference,
                                      ),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<TopicUserInteractionRecord>
                                          containerTopicUserInteractionRecordList =
                                          snapshot.data!;
                                      final containerTopicUserInteractionRecord =
                                          containerTopicUserInteractionRecordList
                                                  .isNotEmpty
                                              ? containerTopicUserInteractionRecordList
                                                  .first
                                              : null;

                                      return Container(
                                        decoration: BoxDecoration(),
                                        child: wrapWithModel(
                                          model:
                                              _model.topicCardModels.getModel(
                                            listTopicsItem.topicTitle,
                                            listTopicsIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          updateOnChange: true,
                                          child: TopicCardWidget(
                                            key: Key(
                                              'Keyftr_${listTopicsItem.topicTitle}',
                                            ),
                                            refTopic: listTopicsItem.reference,
                                            refTopicUserInteractions:
                                                containerTopicUserInteractionRecord
                                                    ?.reference,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              wrapWithModel(
                model: _model.navbarMainComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: NavbarMainComponentWidget(
                  toggleHomeIcon: false,
                  toggleBrowseIcon: true,
                  toggleCreateIcon: false,
                  toggleNotificationIcon: false,
                  toggleMessagesIcon: false,
                ),
              ),
              wrapWithModel(
                model: _model.headerExpandComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: HeaderExpandComponentWidget(
                  stringHeader: 'Browse Topics',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
