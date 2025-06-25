import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'topic_card_model.dart';
export 'topic_card_model.dart';

/// Create a component: Topic Card
/// Purpose: To introduce a broad subject area for discussion and provide a
/// gateway to more specific debates and content within that topic.
///
/// Found primarily on the "Browse Topics" page and potentially in "For You"
/// feeds if a new or trending topic is recommended.
///
/// Header Color: Yes, a dynamic color based on topic category or trending
/// status.
///
/// Unexpanded View (Content Card - for "Browse Topics" and "For You" Feed):
///
/// Topic Title: Prominently displayed (e.g., "Climate Change Policy").
/// Brief Description/Overview: A concise, AI-generated summary of the topic's
/// scope and key aspects.
/// Key Metrics: "Number of Motions Made" within this topic, "Active Debates"
/// count, "Followers" count for the topic.
/// Visual Cue: A relevant icon or small image representing the topic.
/// Slider Positions: No slider on this card.
/// Buttons: Share, Favorite, Report, Expand.
/// Expanded View (Content Card - for "Browse Topics" and "For You" Feed):
///
/// Full AI-Generated Overview: The complete AI-generated summary of the
/// topic, potentially with sections for "Pro" and "Con" perspectives.
/// Top Motions: A scrollable list or carousel of the most popular or
/// impactful motions under this topic, displayed as Motion Card (Simple).
/// Related Topics: A list of interconnected topics (clickable).
/// User Rate of Importance: Upvote/Downvote buttons for users to rate the
/// topic's importance.
/// "View All Motions" Button: Navigates to the "Browse Motions" page,
/// filtered by this topic.
/// "Follow Topic" Button: Allows users to subscribe to updates related to
/// this topic.
/// Comment/Thread Button: Opens a dedicated comment section for general
/// discussion about the topic (not specific arguments). This includes a text
/// input field for comments and a "Post Comment" button.
class TopicCardWidget extends StatefulWidget {
  const TopicCardWidget({
    super.key,
    required this.refTopic,
    this.refTopicUserInteractions,
  });

  final DocumentReference? refTopic;
  final DocumentReference? refTopicUserInteractions;

  @override
  State<TopicCardWidget> createState() => _TopicCardWidgetState();
}

class _TopicCardWidgetState extends State<TopicCardWidget> {
  late TopicCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopicCardModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.refTopicUserInteractions?.id != null &&
          widget.refTopicUserInteractions?.id != '') {
        await widget.refTopicUserInteractions!.update({
          ...createTopicUserInteractionRecordData(
            topicUserViewed: true,
          ),
          ...mapToFirestore(
            {
              'topicUserLastViewed': FieldValue.serverTimestamp(),
              'topicUserViewedCount': FieldValue.increment(1),
            },
          ),
        });
      } else {
        var topicUserInteractionRecordReference =
            TopicUserInteractionRecord.createDoc(widget.refTopic!);
        await topicUserInteractionRecordReference.set({
          ...createTopicUserInteractionRecordData(
            refUser: currentUserReference,
            topicUserViewed: true,
            topicUserViewedCount: 1,
          ),
          ...mapToFirestore(
            {
              'topicUserFirstViewed': FieldValue.serverTimestamp(),
              'topicUserLastViewed': FieldValue.serverTimestamp(),
            },
          ),
        });
        _model.createTopicUserInteraction =
            TopicUserInteractionRecord.getDocumentFromData({
          ...createTopicUserInteractionRecordData(
            refUser: currentUserReference,
            topicUserViewed: true,
            topicUserViewedCount: 1,
          ),
          ...mapToFirestore(
            {
              'topicUserFirstViewed': DateTime.now(),
              'topicUserLastViewed': DateTime.now(),
            },
          ),
        }, topicUserInteractionRecordReference);
      }
    });

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Divider(
          height: 3.0,
          thickness: 3.0,
          color: FlutterFlowTheme.of(context).secondary,
        ),
        StreamBuilder<TopicRecord>(
          stream: TopicRecord.getDocument(widget.refTopic!),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }

            final containerTopicRecord = snapshot.data!;

            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  controller: _model.expandableExpandableController,
                  child: ExpandablePanel(
                    header: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 0.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              containerTopicRecord.topicTitle,
                              'Topic Title',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  fontSize: 21.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                        ],
                      ),
                    ),
                    collapsed: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent2,
                      ),
                    ),
                    expanded: StreamBuilder<TopicUserInteractionRecord>(
                      stream: TopicUserInteractionRecord.getDocument(
                          widget.refTopicUserInteractions != null
                              ? widget.refTopicUserInteractions!
                              : _model.createTopicUserInteraction!.reference),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }

                        final containerTopicUserInteractionRecord =
                            snapshot.data!;

                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          height: 30.0,
                                          decoration: BoxDecoration(),
                                          child: Builder(
                                            builder: (context) {
                                              final listTopicCategories =
                                                  containerTopicRecord
                                                      .topicCategoriesList
                                                      .toList();

                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  6.0,
                                                  0,
                                                  24.0,
                                                  0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    listTopicCategories.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(width: 3.0),
                                                itemBuilder: (context,
                                                    listTopicCategoriesIndex) {
                                                  final listTopicCategoriesItem =
                                                      listTopicCategories[
                                                          listTopicCategoriesIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                0.0, 2.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'TopicCategoryButton pressed ...');
                                                      },
                                                      text: valueOrDefault<
                                                          String>(
                                                        listTopicCategoriesItem,
                                                        'Category',
                                                      ),
                                                      options: FFButtonOptions(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .mWVFill,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                        elevation: 1.0,
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .mWVAlt,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .mWVHover,
                                                        hoverBorderSide:
                                                            BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .mWVFill,
                                                          width: 2.0,
                                                        ),
                                                        hoverTextColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        hoverElevation: 3.0,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 6.0, 12.0, 6.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 3.0, 2.0, 3.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  if (containerTopicUserInteractionRecord
                                                      .topicUserLiked) {
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await widget
                                                            .refTopicUserInteractions!
                                                            .update(
                                                                createTopicUserInteractionRecordData(
                                                          topicUserLiked: false,
                                                        ));

                                                        await containerTopicRecord
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'topicUpvoteNumber':
                                                                  FieldValue
                                                                      .increment(
                                                                          -(1)),
                                                            },
                                                          ),
                                                        });
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .solidArrowAltCircleUp,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .upvoteFill,
                                                        size: 24.0,
                                                      ),
                                                    );
                                                  } else {
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await widget
                                                            .refTopicUserInteractions!
                                                            .update(
                                                                createTopicUserInteractionRecordData(
                                                          topicUserLiked: true,
                                                        ));

                                                        await containerTopicRecord
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'topicUpvoteNumber':
                                                                  FieldValue
                                                                      .increment(
                                                                          1),
                                                            },
                                                          ),
                                                        });
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .solidArrowAltCircleUp,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .upvoteUnselected,
                                                        size: 24.0,
                                                      ),
                                                    );
                                                  }
                                                },
                                              ),
                                              Text(
                                                formatNumber(
                                                  containerTopicRecord
                                                      .topicUpvoteNumber,
                                                  formatType:
                                                      FormatType.compact,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 2.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 3.0, 3.0, 3.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  if (containerTopicUserInteractionRecord
                                                      .topicUserDisliked) {
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await widget
                                                            .refTopicUserInteractions!
                                                            .update(
                                                                createTopicUserInteractionRecordData(
                                                          topicUserDisliked:
                                                              false,
                                                        ));

                                                        await containerTopicRecord
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'topicDownvoteNumber':
                                                                  FieldValue
                                                                      .increment(
                                                                          -(1)),
                                                            },
                                                          ),
                                                        });
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .solidArrowAltCircleDown,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .downvoteFill,
                                                        size: 24.0,
                                                      ),
                                                    );
                                                  } else {
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await widget
                                                            .refTopicUserInteractions!
                                                            .update({
                                                          ...createTopicUserInteractionRecordData(
                                                            topicUserDisliked:
                                                                true,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'topicUserDislikedTime':
                                                                  FieldValue
                                                                      .serverTimestamp(),
                                                            },
                                                          ),
                                                        });

                                                        await containerTopicRecord
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'topicDownvoteNumber':
                                                                  FieldValue
                                                                      .increment(
                                                                          1),
                                                            },
                                                          ),
                                                        });
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .solidArrowAltCircleDown,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .downvoteUnselected,
                                                        size: 24.0,
                                                      ),
                                                    );
                                                  }
                                                },
                                              ),
                                              Text(
                                                formatNumber(
                                                  containerTopicRecord
                                                      .topicDownvoteNumber,
                                                  formatType:
                                                      FormatType.compact,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 2.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () {
                                            print(
                                                'NavigateTopicForumButton pressed ...');
                                          },
                                          text: 'Topic Forum',
                                          icon: Icon(
                                            FFIcons.ktopicForumIcon2,
                                            size: 21.0,
                                          ),
                                          options: FFButtonOptions(
                                            width: 150.0,
                                            height: 32.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            iconAlignment: IconAlignment.end,
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .mWVAlt,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.interTight(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.white,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            elevation: 2.0,
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                            hoverColor:
                                                FlutterFlowTheme.of(context)
                                                    .mWVHover,
                                            hoverElevation: 5.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 28.0,
                      iconPadding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        Divider(
          height: 3.0,
          thickness: 3.0,
          color: FlutterFlowTheme.of(context).secondary,
        ),
      ],
    );
  }
}
