import 'package:my_portfolio/core/util/url_helper.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class UrlButton extends StatelessWidget {
  final String url;
  final bool isDownload;
  const UrlButton(this.url, {super.key, this.isDownload = false});

  @override
  Widget build(BuildContext context) {
    return IconButton.outline(
      icon: Icon(isDownload ? LucideIcons.download : LucideIcons.github),
      onPressed: () => UrlHelper.launch(url, isDownload),
    );
  }
}
