import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navbar_main_component_model.dart';
export 'navbar_main_component_model.dart';

class NavbarMainComponentWidget extends StatefulWidget {
  const NavbarMainComponentWidget({
    super.key,
    bool? toggleHomeIcon,
    bool? toggleBrowseIcon,
    bool? toggleCreateIcon,
    bool? toggleNotificationIcon,
    bool? toggleMessagesIcon,
  })  : this.toggleHomeIcon = toggleHomeIcon ?? false,
        this.toggleBrowseIcon = toggleBrowseIcon ?? false,
        this.toggleCreateIcon = toggleCreateIcon ?? false,
        this.toggleNotificationIcon = toggleNotificationIcon ?? false,
        this.toggleMessagesIcon = toggleMessagesIcon ?? false;

  final bool toggleHomeIcon;
  final bool toggleBrowseIcon;
  final bool toggleCreateIcon;
  final bool toggleNotificationIcon;
  final bool toggleMessagesIcon;

  @override
  State<NavbarMainComponentWidget> createState() =>
      _NavbarMainComponentWidgetState();
}

class _NavbarMainComponentWidgetState extends State<NavbarMainComponentWidget> {
  late NavbarMainComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarMainComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Divider(
            height: 3.0,
            thickness: 3.0,
            color: FlutterFlowTheme.of(context).mWVOutline,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).mWVFill,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 2.0,
                  sigmaY: 2.0,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6.0,
                                color: valueOrDefault<Color>(
                                  widget.toggleHomeIcon == true
                                      ? FlutterFlowTheme.of(context).navHover
                                      : FlutterFlowTheme.of(context).navFill,
                                  FlutterFlowTheme.of(context).navFill,
                                ),
                                offset: Offset(
                                  0.0,
                                  0.0,
                                ),
                                spreadRadius: 2.0,
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(32.0),
                              bottomRight: Radius.circular(32.0),
                              topLeft: Radius.circular(32.0),
                              topRight: Radius.circular(32.0),
                            ),
                          ),
                          child: FlutterFlowIconButton(
                            borderRadius: 32.0,
                            buttonSize: 50.0,
                            fillColor: valueOrDefault<Color>(
                              widget.toggleHomeIcon == true
                                  ? FlutterFlowTheme.of(context).navHover
                                  : FlutterFlowTheme.of(context).navFill,
                              FlutterFlowTheme.of(context).navFill,
                            ),
                            hoverColor: FlutterFlowTheme.of(context).navHover,
                            hoverIconColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            icon: Icon(
                              Icons.home,
                              color: valueOrDefault<Color>(
                                widget.toggleHomeIcon == true
                                    ? FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                FlutterFlowTheme.of(context).primaryBackground,
                              ),
                              size: 32.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(HomePageWidget.routeName);
                            },
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: valueOrDefault<Color>(
                                widget.toggleBrowseIcon == true
                                    ? FlutterFlowTheme.of(context).navHover
                                    : FlutterFlowTheme.of(context).navFill,
                                FlutterFlowTheme.of(context).navFill,
                              ),
                              offset: Offset(
                                0.0,
                                0.0,
                              ),
                              spreadRadius: 2.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        child: FlutterFlowIconButton(
                          borderRadius: 32.0,
                          buttonSize: 50.0,
                          fillColor: valueOrDefault<Color>(
                            widget.toggleBrowseIcon == true
                                ? FlutterFlowTheme.of(context).navHover
                                : FlutterFlowTheme.of(context).navFill,
                            FlutterFlowTheme.of(context).navFill,
                          ),
                          hoverColor: FlutterFlowTheme.of(context).navHover,
                          hoverIconColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          icon: Icon(
                            Icons.search_sharp,
                            color: valueOrDefault<Color>(
                              widget.toggleBrowseIcon == true
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            size: 32.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6.0,
                                  color: valueOrDefault<Color>(
                                    widget.toggleCreateIcon == true
                                        ? FlutterFlowTheme.of(context).navHover
                                        : FlutterFlowTheme.of(context).navFill,
                                    FlutterFlowTheme.of(context).navFill,
                                  ),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 2.0,
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36.0),
                                bottomRight: Radius.circular(36.0),
                                topLeft: Radius.circular(36.0),
                                topRight: Radius.circular(36.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 4.0, 4.0),
                              child: FlutterFlowIconButton(
                                borderRadius: 36.0,
                                buttonSize: 64.0,
                                fillColor: valueOrDefault<Color>(
                                  widget.toggleCreateIcon == true
                                      ? FlutterFlowTheme.of(context).navHover
                                      : FlutterFlowTheme.of(context).navFill,
                                  FlutterFlowTheme.of(context).navFill,
                                ),
                                hoverColor:
                                    FlutterFlowTheme.of(context).navHover,
                                hoverIconColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                icon: Icon(
                                  Icons.add,
                                  color: valueOrDefault<Color>(
                                    widget.toggleCreateIcon == true
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                        : FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  size: 42.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      badges.Badge(
                        badgeContent: Text(
                          '0',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                        badgeColor: FlutterFlowTheme.of(context).mWVFill,
                        elevation: 4.0,
                        padding: EdgeInsets.all(6.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: false,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6.0,
                                color: valueOrDefault<Color>(
                                  widget.toggleNotificationIcon == true
                                      ? FlutterFlowTheme.of(context).navHover
                                      : FlutterFlowTheme.of(context).navFill,
                                  FlutterFlowTheme.of(context).navFill,
                                ),
                                offset: Offset(
                                  0.0,
                                  0.0,
                                ),
                                spreadRadius: 4.0,
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36.0),
                              bottomRight: Radius.circular(36.0),
                              topLeft: Radius.circular(36.0),
                              topRight: Radius.circular(36.0),
                            ),
                          ),
                          child: FlutterFlowIconButton(
                            borderRadius: 32.0,
                            buttonSize: 50.0,
                            fillColor: valueOrDefault<Color>(
                              widget.toggleNotificationIcon == true
                                  ? FlutterFlowTheme.of(context).navHover
                                  : FlutterFlowTheme.of(context).navFill,
                              FlutterFlowTheme.of(context).navFill,
                            ),
                            hoverColor: FlutterFlowTheme.of(context).navHover,
                            hoverIconColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            icon: Icon(
                              Icons.notifications_sharp,
                              color: valueOrDefault<Color>(
                                widget.toggleNotificationIcon == true
                                    ? FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                FlutterFlowTheme.of(context).primaryBackground,
                              ),
                              size: 30.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
                        child: badges.Badge(
                          badgeContent: Text(
                            '0',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
                          badgeColor: FlutterFlowTheme.of(context).mWVFill,
                          elevation: 4.0,
                          padding: EdgeInsets.all(6.0),
                          position: badges.BadgePosition.topEnd(),
                          animationType: badges.BadgeAnimationType.scale,
                          toAnimate: false,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6.0,
                                  color: valueOrDefault<Color>(
                                    widget.toggleMessagesIcon == true
                                        ? FlutterFlowTheme.of(context).navHover
                                        : FlutterFlowTheme.of(context).navFill,
                                    FlutterFlowTheme.of(context).navFill,
                                  ),
                                  offset: Offset(
                                    0.0,
                                    0.0,
                                  ),
                                  spreadRadius: 4.0,
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36.0),
                                bottomRight: Radius.circular(36.0),
                                topLeft: Radius.circular(36.0),
                                topRight: Radius.circular(36.0),
                              ),
                            ),
                            child: FlutterFlowIconButton(
                              borderRadius: 32.0,
                              buttonSize: 50.0,
                              fillColor: valueOrDefault<Color>(
                                widget.toggleMessagesIcon == true
                                    ? FlutterFlowTheme.of(context).navHover
                                    : FlutterFlowTheme.of(context).navFill,
                                FlutterFlowTheme.of(context).navFill,
                              ),
                              hoverColor: FlutterFlowTheme.of(context).navHover,
                              hoverIconColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: Icon(
                                Icons.mail,
                                color: valueOrDefault<Color>(
                                  widget.toggleMessagesIcon == true
                                      ? FlutterFlowTheme.of(context)
                                          .secondaryBackground
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 3.0,
            thickness: 3.0,
            color: FlutterFlowTheme.of(context).mWVOutline,
          ),
        ],
      ),
    );
  }
}
