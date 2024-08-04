import 'package:flutter/material.dart';

Color getPrimaryColor(BuildContext context) {
  final theme = Theme.of(context);
  return theme.colorScheme.primary;
}

Color getOnPrimaryColor(BuildContext context) {
  final theme = Theme.of(context);
  return theme.colorScheme.onPrimary;
}

Color getOnPrimaryContainer(BuildContext context) {
  final theme = Theme.of(context);
  return theme.colorScheme.onPrimaryContainer;
}

Color getSecondary(BuildContext context) {
  final theme = Theme.of(context);
  return theme.colorScheme.secondary;
}

Color getOnSurface(BuildContext context) {
  final theme = Theme.of(context);
  return theme.colorScheme.onSurface;
}
