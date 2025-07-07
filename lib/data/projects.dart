import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/models/project_status.dart';
import 'package:my_portfolio/models/tech.dart';

class Projects {
  static List<Project> data = [
    Project(
      title: 'Pomodoro',
      description:
          'Pomodoro desktop app developed in Flutter. Designed to help you stay focused through work sessions.',
      url: 'https://github.com/EdwingVeraDuran/pomodoro',
      iconAsset: 'assets/icons/pomodoro.png',
      projectStatus: ProjectStatus.completed,
      techStack: [Tech.flutter(), Tech.bloc(), Tech.intl(), Tech.shadcn()],
    ),
    Project(
      title: 'Pomodoro',
      description:
          'Pomodoro desktop app developed in Flutter. Designed to help you stay focused through work sessions.',
      url: 'https://github.com/EdwingVeraDuran/pomodoro',
      iconAsset: 'assets/icons/pomodoro.png',
      projectStatus: ProjectStatus.inProgress,
      techStack: [Tech.flutter(), Tech.bloc(), Tech.intl(), Tech.shadcn()],
    ),
    Project(
      title: 'Pomodoro',
      description:
          'Pomodoro desktop app developed in Flutter. Designed to help you stay focused through work sessions.',
      url: 'https://github.com/EdwingVeraDuran/pomodoro',
      iconAsset: 'assets/icons/pomodoro.png',
      projectStatus: ProjectStatus.paused,
      techStack: [Tech.flutter(), Tech.bloc(), Tech.intl(), Tech.shadcn()],
    ),
  ];
}
