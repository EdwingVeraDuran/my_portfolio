import 'package:my_portfolio/util/url_helper.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class InfoChip extends StatelessWidget {
  final String label;
  final String? url;
  final Color? color;
  const InfoChip(this.label, {super.key, this.url, this.color});

  @override
  Widget build(BuildContext context) {
    return Chip(
      style: ButtonStyle(
        variance:
            color != null
                ? ButtonVariance.primary.withBackgroundColor(
                  color: color,
                  hoverColor: color?.scaleAlpha(0.8),
                )
                : ButtonVariance.secondary,
      ),
      onPressed: url != null ? () => UrlHelper.launch(url!) : null,
      child: Text(label),
    );
  }
}
