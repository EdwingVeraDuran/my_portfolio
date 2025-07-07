import 'package:shadcn_flutter/shadcn_flutter.dart';

enum ProjectStatus { completed, inProgress, paused }

extension ProjectStatusLabel on ProjectStatus {
  String get label {
    switch (this) {
      case ProjectStatus.completed:
        return 'Completed';
      case ProjectStatus.inProgress:
        return 'In Progress';
      case ProjectStatus.paused:
        return 'Paused';
    }
  }

  Color get color {
    switch (this) {
      case ProjectStatus.completed:
        return Colors.green;
      case ProjectStatus.inProgress:
        return Colors.orange;
      case ProjectStatus.paused:
        return Colors.red;
    }
  }
}
