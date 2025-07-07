import 'package:my_portfolio/core/models/project_status.dart';
import 'package:my_portfolio/core/shared/widgets/field.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class StatusField extends StatelessWidget {
  const StatusField({super.key});

  @override
  Widget build(BuildContext context) {
    return Field(
      label: 'Status',
      child: Select<ProjectStatus>(
        itemBuilder: (context, value) => Text(value.label),
        constraints: BoxConstraints(minWidth: 250),
        popupConstraints: BoxConstraints(maxWidth: 200),
        onChanged: (value) {},
        value: ProjectStatus.inProgress,
        placeholder: Text('Project status'),
        popup:
            (context) => SelectPopup(
              items: SelectItemList(
                children:
                    ProjectStatus.values
                        .map(
                          (e) =>
                              SelectItemButton(value: e, child: Text(e.label)),
                        )
                        .toList(),
              ),
            ),
      ),
    );
  }
}
