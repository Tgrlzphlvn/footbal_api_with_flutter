import 'package:flutter/material.dart';

class ProjectConstants {
  // App Title
  static const String appTitle = 'Holigan';
  final String leaguesViewTitle = 'Ligler';
  final String matchResultsTitle = 'Sonuçlar';
  // Font Family
  static const String helvetica = 'helvetica';
  // Others
  final String nullString = '';
}

class ProjectPaddings {
  final EdgeInsets normalPadding = const EdgeInsets.all(10);
  final Radius normalRadius = const Radius.circular(10);

  final double lowValue = 5;
  final double normalPaddingValue = 10;
}

class ProjectColors {
  final Color deepPurple300 = Colors.deepPurple[300]!;
}

class ProjectTextStyle {
  static const TextStyle lowStyle = TextStyle(
    fontFamily: ProjectConstants.helvetica,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle normalStyle = TextStyle(
    fontFamily: ProjectConstants.helvetica,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle mediumStyle = TextStyle(
    fontFamily: ProjectConstants.helvetica,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle highStyle = TextStyle(
    fontFamily: ProjectConstants.helvetica,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle titleStyle = TextStyle(
    fontFamily: ProjectConstants.helvetica,
    fontSize: 26,
    fontWeight: FontWeight.w800,
  );
}
