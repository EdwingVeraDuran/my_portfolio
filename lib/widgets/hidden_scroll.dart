import 'package:flutter/material.dart';

class HiddenScroll extends ScrollBehavior {
  const HiddenScroll();

  @override
  Widget buildScrollbar(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
