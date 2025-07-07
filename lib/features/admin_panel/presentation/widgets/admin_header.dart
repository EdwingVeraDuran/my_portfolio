import 'package:my_portfolio/core/shared/widgets/section_title.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AdminHeader extends StatelessWidget {
  const AdminHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SectionTitle('Projects'),
        PrimaryButton(
          trailing: Icon(LucideIcons.circlePlus),
          child: Text('New'),
          onPressed: () {},
        ),
      ],
    );
  }
}
