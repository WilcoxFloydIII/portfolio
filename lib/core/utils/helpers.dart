import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/widgets.dart';

double rs(
  BuildContext context, {
  required double mobile,
  double? tablet,
  double? desktop,
}) {
  final bp = ResponsiveBreakpoints.of(context);

  if (bp.isDesktop) return desktop ?? tablet ?? mobile;
  if (bp.isTablet) return tablet ?? mobile;
  return mobile;
}

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ResponsiveWidget({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    final bp = ResponsiveBreakpoints.of(context);

    if (bp.isDesktop) {
      // desktop → use desktop OR tablet OR mobile
      return desktop ?? tablet ?? mobile;
    }

    if (bp.isTablet) {
      // tablet → use tablet OR mobile
      return tablet ?? mobile;
    }

    // mobile → always use mobile
    return mobile;
  }
}

String formatDuration(DateTime start, DateTime end) {
  int totalMonths = (end.year - start.year) * 12 + (end.month - start.month);
  int years = totalMonths ~/ 12;
  int months = totalMonths % 12;

  if (years > 0 && months > 0) {
    return "$years year${years > 1 ? 's' : ''} "
        "$months month${months > 1 ? 's' : ''}";
  } else if (years > 0) {
    return "$years year${years > 1 ? 's' : ''}";
  } else {
    return "$months month${months > 1 ? 's' : ''}";
  }
}
