import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_forum_select_component_model.dart';
export 'home_page_forum_select_component_model.dart';

class HomePageForumSelectComponentWidget extends StatefulWidget {
  const HomePageForumSelectComponentWidget({
    super.key,
    required this.titleForum,
    required this.colourFill,
    required this.colourOutline,
    required this.colourHover,
    required this.colourAlt,
    required this.numberNotificationMy,
  });

  final String? titleForum;
  final Color? colourFill;
  final Color? colourOutline;
  final Color? colourHover;
  final Color? colourAlt;
  final int? numberNotificationMy;

  @override
  State<HomePageForumSelectComponentWidget> createState() =>
      _HomePageForumSelectComponentWidgetState();
}

class _HomePageForumSelectComponentWidgetState
    extends State<HomePageForumSelectComponentWidget> {
  late HomePageForumSelectComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageForumSelectComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              widget.colourHover,
              FlutterFlowTheme.of(context).alternate,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: FlutterFlowTheme.of(context).accent1,
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24.0),
              bottomRight: Radius.circular(24.0),
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
            border: Border.all(
              color: valueOrDefault<Color>(
                widget.colourOutline,
                FlutterFlowTheme.of(context).secondaryText,
              ),
              width: 2.0,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      color: Colors.transparent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Container(
                        width: 124.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            widget.colourFill,
                            FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 6.0, 12.0, 6.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.titleForum,
                              'Title',
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 21.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                widget.colourHover,
                FlutterFlowTheme.of(context).alternate,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: FlutterFlowTheme.of(context).accent1,
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24.0),
                bottomRight: Radius.circular(24.0),
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
              border: Border.all(
                color: valueOrDefault<Color>(
                  widget.colourOutline,
                  FlutterFlowTheme.of(context).secondaryText,
                ),
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(6.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  badges.Badge(
                    badgeContent: Text(
                      valueOrDefault<String>(
                        widget.numberNotificationMy.toString(),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.w800,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            color: Colors.white,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w800,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                    ),
                    showBadge: true,
                    shape: badges.BadgeShape.circle,
                    badgeColor: FlutterFlowTheme.of(context).mWVAlt,
                    elevation: 4.0,
                    padding: EdgeInsets.all(8.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: false,
                    child: FFButtonWidget(
                      onPressed: () {
                        print('NavMyForumButton pressed ...');
                      },
                      text: 'My ${widget.titleForum}',
                      options: FFButtonOptions(
                        width: 124.0,
                        height: 36.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: valueOrDefault<Color>(
                          widget.colourFill,
                          FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              font: GoogleFonts.interTight(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                              lineHeight: 1.2,
                            ),
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(24.0),
                        hoverColor: valueOrDefault<Color>(
                          widget.colourAlt,
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        hoverElevation: 5.0,
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      if (widget.titleForum == 'Topics') {
                        context.pushNamed(
                          BrowseTopicsWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 500),
                            ),
                          },
                        );
                      } else {
                        if (widget.titleForum == 'Issues') {
                          context.pushNamed(
                            BrowseIssuesWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 500),
                              ),
                            },
                          );
                        } else {
                          if (widget.titleForum == 'Motions') {
                            context.pushNamed(
                              BrowseMotionsWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 500),
                                ),
                              },
                            );
                          } else {
                            if (widget.titleForum == 'Positions') {
                              context.pushNamed(
                                BrowsePositionsWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                },
                              );
                            } else {
                              if (widget.titleForum == 'Debates') {
                                context.pushNamed(
                                  BrowseTopicsWidget.routeName,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 500),
                                    ),
                                  },
                                );
                              } else {
                                if (widget.titleForum == 'Solutions') {
                                  context.pushNamed(
                                    BrowseTopicsWidget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 500),
                                      ),
                                    },
                                  );
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Parameter Error!'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              }
                            }
                          }
                        }
                      }
                    },
                    text: 'Browse',
                    options: FFButtonOptions(
                      height: 36.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconAlignment: IconAlignment.start,
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: valueOrDefault<Color>(
                        widget.colourFill,
                        FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                                lineHeight: 1.2,
                              ),
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(24.0),
                      hoverColor: valueOrDefault<Color>(
                        widget.colourAlt,
                        FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      hoverElevation: 5.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]
          .divide(SizedBox(width: 6.0))
          .addToStart(SizedBox(width: 6.0))
          .addToEnd(SizedBox(width: 6.0)),
    );
  }
}
