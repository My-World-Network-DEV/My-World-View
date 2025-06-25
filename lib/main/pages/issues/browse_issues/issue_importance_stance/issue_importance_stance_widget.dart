import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'issue_importance_stance_model.dart';
export 'issue_importance_stance_model.dart';

class IssueImportanceStanceWidget extends StatefulWidget {
  const IssueImportanceStanceWidget({super.key});

  @override
  State<IssueImportanceStanceWidget> createState() =>
      _IssueImportanceStanceWidgetState();
}

class _IssueImportanceStanceWidgetState
    extends State<IssueImportanceStanceWidget> {
  late IssueImportanceStanceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IssueImportanceStanceModel());

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
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Issue Importance Stance',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                fontSize: 18.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
        Container(
          width: double.infinity,
          child: Slider(
            activeColor: valueOrDefault<Color>(
              () {
                if (_model.setStance == 0.0) {
                  return Color(0xFFFF7F84);
                } else if (_model.setStance == 1.0) {
                  return Color(0xFFFF9799);
                } else if (_model.setStance == 2.0) {
                  return Color(0xFFFFABAC);
                } else if (_model.setStance == 3.0) {
                  return Color(0xFFFBC5C6);
                } else if (_model.setStance == 4.0) {
                  return Color(0xFFF9DBDB);
                } else if (_model.setStance == 5.0) {
                  return FlutterFlowTheme.of(context).alternate;
                } else if (_model.setStance == 6.0) {
                  return Color(0xFFE4E2F9);
                } else if (_model.setStance == 7.0) {
                  return Color(0xFFDED5FD);
                } else if (_model.setStance == 8.0) {
                  return Color(0xFFCEC9FF);
                } else if (_model.setStance == 9.0) {
                  return Color(0xFFC4BEFF);
                } else if (_model.setStance == 10.0) {
                  return Color(0xFFB7B0FF);
                } else {
                  return FlutterFlowTheme.of(context).accent4;
                }
              }(),
              FlutterFlowTheme.of(context).secondaryText,
            ),
            inactiveColor: valueOrDefault<Color>(
              () {
                if (_model.setStance == 0.0) {
                  return Color(0xFFFF7F84);
                } else if (_model.setStance == 1.0) {
                  return Color(0xFFFF9799);
                } else if (_model.setStance == 2.0) {
                  return Color(0xFFFFABAC);
                } else if (_model.setStance == 3.0) {
                  return Color(0xFFFBC5C6);
                } else if (_model.setStance == 4.0) {
                  return Color(0xFFF9DBDB);
                } else if (_model.setStance == 5.0) {
                  return FlutterFlowTheme.of(context).alternate;
                } else if (_model.setStance == 6.0) {
                  return Color(0xFFE4E2F9);
                } else if (_model.setStance == 7.0) {
                  return Color(0xFFDED5FD);
                } else if (_model.setStance == 8.0) {
                  return Color(0xFFCEC9FF);
                } else if (_model.setStance == 9.0) {
                  return Color(0xFFC4BEFF);
                } else if (_model.setStance == 10.0) {
                  return Color(0xFFB7B0FF);
                } else {
                  return FlutterFlowTheme.of(context).accent4;
                }
              }(),
              FlutterFlowTheme.of(context).secondaryText,
            ),
            min: 0.0,
            max: 10.0,
            value: _model.sliderValue ??= 5.0,
            label: _model.sliderValue?.toStringAsFixed(2),
            divisions: 10,
            onChanged: (newValue) async {
              newValue = double.parse(newValue.toStringAsFixed(2));
              safeSetState(() => _model.sliderValue = newValue);
              _model.setStance = _model.sliderValue;
              safeSetState(() {});
            },
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeIn,
          width: valueOrDefault<double>(
            () {
              if (_model.setStance == 0.0) {
                return 212;
              } else if (_model.setStance == 1.0) {
                return 196;
              } else if (_model.setStance == 2.0) {
                return 178;
              } else if (_model.setStance == 3.0) {
                return 136;
              } else if (_model.setStance == 4.0) {
                return 224;
              } else if (_model.setStance == 5.0) {
                return 112;
              } else if (_model.setStance == 6.0) {
                return 204;
              } else if (_model.setStance == 7.0) {
                return 124;
              } else if (_model.setStance == 8.0) {
                return 164;
              } else if (_model.setStance == 9.0) {
                return 172;
              } else if (_model.setStance == 10.0) {
                return 196;
              } else {
                return 196;
              }
            }()
                .toDouble(),
            196.0,
          ),
          height: 36.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              () {
                if (_model.setStance == 0.0) {
                  return Color(0xFFFF7F84);
                } else if (_model.setStance == 1.0) {
                  return Color(0xFFFF9799);
                } else if (_model.setStance == 2.0) {
                  return Color(0xFFFFABAC);
                } else if (_model.setStance == 3.0) {
                  return Color(0xFFFBC5C6);
                } else if (_model.setStance == 4.0) {
                  return Color(0xFFF9DBDB);
                } else if (_model.setStance == 5.0) {
                  return FlutterFlowTheme.of(context).alternate;
                } else if (_model.setStance == 6.0) {
                  return Color(0xFFE4E2F9);
                } else if (_model.setStance == 7.0) {
                  return Color(0xFFDED5FD);
                } else if (_model.setStance == 8.0) {
                  return Color(0xFFCEC9FF);
                } else if (_model.setStance == 9.0) {
                  return Color(0xFFC4BEFF);
                } else if (_model.setStance == 10.0) {
                  return Color(0xFFB7B0FF);
                } else {
                  return FlutterFlowTheme.of(context).secondary;
                }
              }(),
              FlutterFlowTheme.of(context).secondary,
            ),
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(
              color: valueOrDefault<Color>(
                () {
                  if (_model.setStance == 0.0) {
                    return Color(0xFF981319);
                  } else if (_model.setStance == 1.0) {
                    return Color(0xFFBD3637);
                  } else if (_model.setStance == 2.0) {
                    return Color(0xFFBC4D50);
                  } else if (_model.setStance == 3.0) {
                    return Color(0xFFB05E5F);
                  } else if (_model.setStance == 4.0) {
                    return Color(0xFFBF7D7D);
                  } else if (_model.setStance == 5.0) {
                    return Color(0xFFA19A9A);
                  } else if (_model.setStance == 6.0) {
                    return Color(0xFFA8A8BF);
                  } else if (_model.setStance == 7.0) {
                    return Color(0xFF857BB0);
                  } else if (_model.setStance == 8.0) {
                    return Color(0xFF4E4896);
                  } else if (_model.setStance == 9.0) {
                    return Color(0xFF2F2678);
                  } else if (_model.setStance == 10.0) {
                    return Color(0xFF150C5E);
                  } else {
                    return Color(0xFFA19A9A);
                  }
                }(),
                Color(0xFFA19A9A),
              ),
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AnimatedDefaultTextStyle(
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                    duration: Duration(milliseconds: 195),
                    curve: Curves.easeIn,
                    child: Text(
                      valueOrDefault<String>(
                        () {
                          if (_model.setStance == 0.0) {
                            return 'Extremely Unimportant';
                          } else if (_model.setStance == 1.0) {
                            return 'Utterly Unimportant';
                          } else if (_model.setStance == 2.0) {
                            return 'Very Unimportant';
                          } else if (_model.setStance == 3.0) {
                            return 'Unimportant';
                          } else if (_model.setStance == 4.0) {
                            return 'Somewhat Unimportant';
                          } else if (_model.setStance == 5.0) {
                            return 'Neutral';
                          } else if (_model.setStance == 6.0) {
                            return 'Somewhat Important';
                          } else if (_model.setStance == 7.0) {
                            return 'Important';
                          } else if (_model.setStance == 8.0) {
                            return 'Very Important';
                          } else if (_model.setStance == 9.0) {
                            return 'Utterly Important';
                          } else if (_model.setStance == 10.0) {
                            return 'Extremely Important';
                          } else {
                            return 'Pick a Stance...';
                          }
                        }(),
                        '',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
