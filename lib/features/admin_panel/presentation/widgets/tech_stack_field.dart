import 'package:my_portfolio/core/shared/widgets/field.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class TechStackField extends StatelessWidget {
  const TechStackField({super.key});

  @override
  Widget build(BuildContext context) {
    return Field(
      label: 'Tech Stack',
      child: ChipInput<String>(
        onSubmitted: (value) {},
        suggestions: [],
        onSuggestionChoosen: (index) {},
        onChanged: (value) {},
        chips: [],
        chipBuilder: (context, chip) {
          return Text(chip);
        },
      ),
    );
  }
}
