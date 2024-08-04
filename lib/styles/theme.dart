import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);


  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff000000),
      surfaceTint: Color(0xff5e5e5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff262626),
      onPrimaryContainer: Color(0xffb1b1b1),
      secondary: Color(0xffa5000d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdb332e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff373737),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5a5a5a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffa5000d),
      onError: Color(0xffffffff),
      errorContainer: Color(4292555566),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572537),
      onSurface: Color(4279966491),
      onSurfaceVariant: Color(4282664776),
      outline: Color(4285823096),
      outlineVariant: Color(4291086280),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281348144),
      inversePrimary: Color(4291217094),
      primaryFixed: Color(4293059298),
      onPrimaryFixed: Color(4279966491),
      primaryFixedDim: Color(4291217094),
      onPrimaryFixedVariant: Color(4282861383),
      secondaryFixed: Color(4294957782),
      onSecondaryFixed: Color(4282449922),
      secondaryFixedDim: Color(4294948011),
      onSecondaryFixedVariant: Color(0xff93000a),
      tertiaryFixed: Color(4293190370),
      onTertiaryFixed: Color(4279966748),
      tertiaryFixedDim: Color(4291348166),
      onTertiaryFixedVariant: Color(4282861383),
      surfaceDim: Color(4292532954),
      surfaceBright: Color(4294572537),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177779),
      surfaceContainer: Color(4293848814),
      surfaceContainerHigh: Color(4293454056),
      surfaceContainerHighest: Color(4293059298),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291217094),
      surfaceTint: Color(4291217094),
      onPrimary: Color(4281348144),
      primaryContainer: Color(4278190080),
      onPrimaryContainer: Color(4288059030),
      secondary: Color(0xffa5000d),
      onSecondary: Color(4285071365),
      secondaryContainer: Color(4292424237),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4291348166),
      onTertiary: Color(4281348144),
      tertiaryContainer: Color(4282466625),
      onTertiaryContainer: Color(4292400854),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4292424237),
      onErrorContainer: Color(4294967295),
      surface: Color(4279440147),
      onSurface: Color(4293059298),
      onSurfaceVariant: Color(4291086280),
      outline: Color(4287533458),
      outlineVariant: Color(4282664776),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059298),
      inversePrimary: Color(4284374622),
      primaryFixed: Color(4293059298),
      onPrimaryFixed: Color(4279966491),
      primaryFixedDim: Color(4291217094),
      onPrimaryFixedVariant: Color(4282861383),
      secondaryFixed: Color(4294957782),
      onSecondaryFixed: Color(4282449922),
      secondaryFixedDim: Color(4294948011),
      onSecondaryFixedVariant: Color(0xff93000a),
      tertiaryFixed: Color(4293190370),
      onTertiaryFixed: Color(4279966748),
      tertiaryFixedDim: Color(4291348166),
      onTertiaryFixedVariant: Color(4282861383),
      surfaceDim: Color(4279440147),
      surfaceBright: Color(4281940281),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4279966491),
      surfaceContainer: Color(4280229663),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281677109),
    );
  }


  ThemeData dark() {
    return theme(darkScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
