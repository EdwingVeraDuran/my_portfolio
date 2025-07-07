import 'package:my_portfolio/core/shared/widgets/hidden_scroll.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class PageBase extends StatelessWidget {
  final Widget child;
  const PageBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child:
          child is Column
              ? ScrollConfiguration(
                behavior: HiddenScroll(),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 48, vertical: 64),
                  child: child,
                ),
              )
              : Center(child: child),
    );
  }
}
