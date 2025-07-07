import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  static Future<void> launch(String url, [bool isDownload = false]) async {
    final baseUri = Uri.parse(url);
    final finalUri =
        isDownload
            ? baseUri.replace(path: '${baseUri.path}/releases')
            : baseUri;

    if (await canLaunchUrl(finalUri)) {
      await launchUrl(finalUri);
    } else {
      debugPrint('Could not launch URL: $finalUri');
    }
  }
}
