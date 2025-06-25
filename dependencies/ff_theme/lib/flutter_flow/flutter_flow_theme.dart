// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';

SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();

  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color mWVFill;
  late Color mWVOutline;
  late Color mWVHover;
  late Color mWVAlt;
  late Color topicFill;
  late Color topicOutline;
  late Color topicHover;
  late Color topicAlt;
  late Color issuesFill;
  late Color issuesOutline;
  late Color issuesHover;
  late Color issuesAlt;
  late Color motionsFill;
  late Color motionsOutline;
  late Color motionsHover;
  late Color motionsAlt;
  late Color positionsFill;
  late Color positionsOutline;
  late Color positionsHover;
  late Color positionsAlt;
  late Color affirmativeFill;
  late Color affirmativeOutline;
  late Color affirmativeHover;
  late Color affirmativeAlt;
  late Color neutralFill;
  late Color neutralOutline;
  late Color neutralHover;
  late Color neutralAlt;
  late Color negativeFill;
  late Color negativeOutline;
  late Color negativeHover;
  late Color negativeAlt;
  late Color debateFill;
  late Color debateOutline;
  late Color debateHover;
  late Color debateAlt;
  late Color solutionsFill;
  late Color solutionsOutline;
  late Color solutionsHover;
  late Color solutionsAlt;
  late Color navFill;
  late Color navHover;
  late Color topicTransparent;
  late Color issueTransparent;
  late Color motionTransparent;
  late Color positionTransparent;
  late Color debateTransparent;
  late Color solutionTransparent;
  late Color upvoteFill;
  late Color upvoteUnselected;
  late Color downvoteFill;
  late Color downvoteUnselected;
  late Color libLabel;
  late Color libPlaceholder;
  late Color libBorder;
  late Color libBorderActive;
  late Color libChecked;
  late Color libLabelLight;
  late Color libBgPrimary;
  late Color libBgSecondary;
  late Color libTextLight;
  late Color libTextDark;
  late Color libHover;
  late Color libBgLight;
  late Color libShadow;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  bool get displayLargeIsCustom => typography.displayLargeIsCustom;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  bool get displayMediumIsCustom => typography.displayMediumIsCustom;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  bool get displaySmallIsCustom => typography.displaySmallIsCustom;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  bool get headlineLargeIsCustom => typography.headlineLargeIsCustom;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  bool get headlineMediumIsCustom => typography.headlineMediumIsCustom;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  bool get headlineSmallIsCustom => typography.headlineSmallIsCustom;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  bool get titleLargeIsCustom => typography.titleLargeIsCustom;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  bool get titleMediumIsCustom => typography.titleMediumIsCustom;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  bool get titleSmallIsCustom => typography.titleSmallIsCustom;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  bool get labelLargeIsCustom => typography.labelLargeIsCustom;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  bool get labelMediumIsCustom => typography.labelMediumIsCustom;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  bool get labelSmallIsCustom => typography.labelSmallIsCustom;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  bool get bodyLargeIsCustom => typography.bodyLargeIsCustom;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  bool get bodyMediumIsCustom => typography.bodyMediumIsCustom;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  bool get bodySmallIsCustom => typography.bodySmallIsCustom;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFFCBCBCB);
  late Color tertiary = const Color(0xA2ADB9F4);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF14181B);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x80000000);
  late Color accent2 = const Color(0x00000000);
  late Color accent3 = const Color(0xFFB5B5B5);
  late Color accent4 = const Color(0xFF959595);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color mWVFill = const Color(0xA22D4FFF);
  late Color mWVOutline = const Color(0xFF14204A);
  late Color mWVHover = const Color(0xDA2D8EFF);
  late Color mWVAlt = const Color(0xDA2D4FFF);
  late Color topicFill = const Color(0xFFE2BBF3);
  late Color topicOutline = const Color(0xFF9363AA);
  late Color topicHover = const Color(0xFFF5E4FC);
  late Color topicAlt = const Color(0xFFDE99E8);
  late Color issuesFill = const Color(0xFFFACF9A);
  late Color issuesOutline = const Color(0xFFB19A00);
  late Color issuesHover = const Color(0xFFFFF1E6);
  late Color issuesAlt = const Color(0xFFF5AB3E);
  late Color motionsFill = const Color(0xFFEBE8A4);
  late Color motionsOutline = const Color(0xFFA2AD12);
  late Color motionsHover = const Color(0xFFFBFDEE);
  late Color motionsAlt = const Color(0xFFE6DB73);
  late Color positionsFill = const Color(0xFFC6D7FA);
  late Color positionsOutline = const Color(0xFF7084AF);
  late Color positionsHover = const Color(0xFFE8EDFE);
  late Color positionsAlt = const Color(0xFF7CAFD5);
  late Color affirmativeFill = const Color(0xFF9CAAF8);
  late Color affirmativeOutline = const Color(0xFF2C3E8F);
  late Color affirmativeHover = const Color(0xFFB8C3FA);
  late Color affirmativeAlt = const Color(0xFF5670C4);
  late Color neutralFill = const Color(0xFFB9B9B9);
  late Color neutralOutline = const Color(0xFFB9B9B9);
  late Color neutralHover = const Color(0xFFB9B9B9);
  late Color neutralAlt = const Color(0xFFB9B9B9);
  late Color negativeFill = const Color(0xFFF1AFB0);
  late Color negativeOutline = const Color(0xFF994C4E);
  late Color negativeHover = const Color(0xFFF7CACB);
  late Color negativeAlt = const Color(0xFFCF7174);
  late Color debateFill = const Color(0xFFFBCBCB);
  late Color debateOutline = const Color(0xFFC26565);
  late Color debateHover = const Color(0xFFFFEBEB);
  late Color debateAlt = const Color(0xFFFE8D8D);
  late Color solutionsFill = const Color(0xFFCAEFA4);
  late Color solutionsOutline = const Color(0xFF8BB55F);
  late Color solutionsHover = const Color(0xFFF5FFEB);
  late Color solutionsAlt = const Color(0xFFB7E08F);
  late Color navFill = const Color(0x2900D3FF);
  late Color navHover = const Color(0x6F00D3FF);
  late Color topicTransparent = const Color(0x91E2BBF3);
  late Color issueTransparent = const Color(0x89FACF9A);
  late Color motionTransparent = const Color(0x8BEBE8A4);
  late Color positionTransparent = const Color(0x85C6D7FA);
  late Color debateTransparent = const Color(0x97FBCBCB);
  late Color solutionTransparent = const Color(0x8CCAEFA4);
  late Color upvoteFill = const Color(0xFF004DFF);
  late Color upvoteUnselected = const Color(0xFF2A3150);
  late Color downvoteFill = const Color(0xFFD93A3D);
  late Color downvoteUnselected = const Color(0xFF572424);
  late Color libLabel = const Color(0xFF161718);
  late Color libPlaceholder = const Color(0xFFCCCCCC);
  late Color libBorder = const Color(0xFFE8E8E8);
  late Color libBorderActive = const Color(0xFFAFAFAF);
  late Color libChecked = const Color(0xFF181818);
  late Color libLabelLight = const Color(0xFFAFAFAF);
  late Color libBgPrimary = const Color(0xFF161718);
  late Color libBgSecondary = const Color(0xFFF1F1F1);
  late Color libTextLight = const Color(0xFFFFFFFF);
  late Color libTextDark = const Color(0xFF161718);
  late Color libHover = const Color(0xFFF9F9F9);
  late Color libBgLight = const Color(0xFFF5F5F5);
  late Color libShadow = const Color(0x15000000);
}

abstract class Typography {
  String get displayLargeFamily;
  bool get displayLargeIsCustom;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  bool get displayMediumIsCustom;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  bool get displaySmallIsCustom;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  bool get headlineLargeIsCustom;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  bool get headlineMediumIsCustom;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  bool get headlineSmallIsCustom;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  bool get titleLargeIsCustom;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  bool get titleMediumIsCustom;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  bool get titleSmallIsCustom;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  bool get labelLargeIsCustom;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  bool get labelMediumIsCustom;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  bool get labelSmallIsCustom;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  bool get bodyLargeIsCustom;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  bool get bodyMediumIsCustom;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  bool get bodySmallIsCustom;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Inter Tight';
  bool get displayLargeIsCustom => false;
  TextStyle get displayLarge => GoogleFonts.interTight(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Inter Tight';
  bool get displayMediumIsCustom => false;
  TextStyle get displayMedium => GoogleFonts.interTight(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Inter Tight';
  bool get displaySmallIsCustom => false;
  TextStyle get displaySmall => GoogleFonts.interTight(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Inter Tight';
  bool get headlineLargeIsCustom => false;
  TextStyle get headlineLarge => GoogleFonts.interTight(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Inter Tight';
  bool get headlineMediumIsCustom => false;
  TextStyle get headlineMedium => GoogleFonts.interTight(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 28.0,
      );
  String get headlineSmallFamily => 'Inter Tight';
  bool get headlineSmallIsCustom => false;
  TextStyle get headlineSmall => GoogleFonts.interTight(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Inter Tight';
  bool get titleLargeIsCustom => false;
  TextStyle get titleLarge => GoogleFonts.interTight(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get titleMediumFamily => 'Inter Tight';
  bool get titleMediumIsCustom => false;
  TextStyle get titleMedium => GoogleFonts.interTight(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Inter Tight';
  bool get titleSmallIsCustom => false;
  TextStyle get titleSmall => GoogleFonts.interTight(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Inter';
  bool get labelLargeIsCustom => false;
  TextStyle get labelLarge => GoogleFonts.inter(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Inter';
  bool get labelMediumIsCustom => false;
  TextStyle get labelMedium => GoogleFonts.inter(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Inter';
  bool get labelSmallIsCustom => false;
  TextStyle get labelSmall => GoogleFonts.inter(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Inter';
  bool get bodyLargeIsCustom => false;
  TextStyle get bodyLarge => GoogleFonts.inter(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Inter';
  bool get bodyMediumIsCustom => false;
  TextStyle get bodyMedium => GoogleFonts.inter(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Inter';
  bool get bodySmallIsCustom => false;
  TextStyle get bodySmall => GoogleFonts.inter(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFF262D34);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF95A1AC);
  late Color primaryBackground = const Color(0xFF1D2428);
  late Color secondaryBackground = const Color(0xFF14181B);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xB2262D34);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color mWVFill = const Color(0xFF2D4FFF);
  late Color mWVOutline = const Color(0xFF34D1BF);
  late Color mWVHover = const Color(0xFFFF8B00);
  late Color mWVAlt = const Color(0xFFD13F8B);
  late Color topicFill = const Color(0xFFE9B463);
  late Color topicOutline = const Color(0xFFF7F7F7);
  late Color topicHover = const Color(0xFFFFFFFF);
  late Color topicAlt = const Color(0xFFEEEEEE);
  late Color issuesFill = const Color(0xFF2D4FFF);
  late Color issuesOutline = const Color(0xFF262D3D);
  late Color issuesHover = const Color(0xFF34D1BF);
  late Color issuesAlt = const Color(0xFFFFFFFF);
  late Color motionsFill = const Color(0xFFFF5252);
  late Color motionsOutline = const Color(0xFFFFFFFF);
  late Color motionsHover = const Color(0xFF111111);
  late Color motionsAlt = const Color(0xFF555555);
  late Color positionsFill = const Color(0xFF9E9E9E);
  late Color positionsOutline = const Color(0xFFDDDDDD);
  late Color positionsHover = const Color(0xFF555555);
  late Color positionsAlt = const Color(0xFF2D4FFF);
  late Color affirmativeFill = const Color(0xFF2D4FFF);
  late Color affirmativeOutline = const Color(0xFFD1E8FF);
  late Color affirmativeHover = const Color(0xFF82DA9F);
  late Color affirmativeAlt = const Color(0xFFDE6C63);
  late Color neutralFill = const Color(0xFFE9B463);
  late Color neutralOutline = const Color(0xFFB7C7DE);
  late Color neutralHover = const Color(0xFF000000);
  late Color neutralAlt = const Color(0xFFB5365A);
  late Color negativeFill = const Color(0xFFC685DF);
  late Color negativeOutline = const Color(0xFF0E07AD);
  late Color negativeHover = const Color(0xFF3545C4);
  late Color negativeAlt = const Color(0xFF7C5CC3);
  late Color debateFill = const Color(0xFF88907A);
  late Color debateOutline = const Color(0xFF38C8C0);
  late Color debateHover = const Color(0xFF9841DC);
  late Color debateAlt = const Color(0xFFECD68B);
  late Color solutionsFill = const Color(0xFF51E454);
  late Color solutionsOutline = const Color(0xFFEA58CE);
  late Color solutionsHover = const Color(0xFF482D57);
  late Color solutionsAlt = const Color(0xFF238EA4);
  late Color navFill = const Color(0xFF63DC68);
  late Color navHover = const Color(0xFF29A556);
  late Color topicTransparent = const Color(0xFF0BFA3E);
  late Color issueTransparent = const Color(0xFF21C1E2);
  late Color motionTransparent = const Color(0xFFF6B21B);
  late Color positionTransparent = const Color(0xFF480B86);
  late Color debateTransparent = const Color(0xFF17D402);
  late Color solutionTransparent = const Color(0xFF703F2B);
  late Color upvoteFill = const Color(0xFFD32CD6);
  late Color upvoteUnselected = const Color(0xFFD2DC02);
  late Color downvoteFill = const Color(0xFFCA223C);
  late Color downvoteUnselected = const Color(0xFF07C798);
  late Color libLabel = const Color(0xFF790D4F);
  late Color libPlaceholder = const Color(0xFF3212DE);
  late Color libBorder = const Color(0xFF6E70F1);
  late Color libBorderActive = const Color(0xFF7370A4);
  late Color libChecked = const Color(0xFFC79B06);
  late Color libLabelLight = const Color(0xFF4FA288);
  late Color libBgPrimary = const Color(0xFFFD9DF5);
  late Color libBgSecondary = const Color(0xFF979D3D);
  late Color libTextLight = const Color(0xFF519981);
  late Color libTextDark = const Color(0xFFC82EAB);
  late Color libHover = const Color(0xFF19C1FF);
  late Color libBgLight = const Color(0xFFCC6B2C);
  late Color libShadow = const Color(0xFF164B78);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    TextStyle? font,
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
    String? package,
  }) {
    if (useGoogleFonts && fontFamily != null) {
      font = GoogleFonts.getFont(fontFamily,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle);
    }

    return font != null
        ? font.copyWith(
            color: color ?? this.color,
            fontSize: fontSize ?? this.fontSize,
            letterSpacing: letterSpacing ?? this.letterSpacing,
            fontWeight: fontWeight ?? this.fontWeight,
            fontStyle: fontStyle ?? this.fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          )
        : copyWith(
            fontFamily: fontFamily,
            package: package,
            color: color,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          );
  }
}
