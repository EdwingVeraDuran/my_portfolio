import 'package:my_portfolio/models/project_status.dart';
import 'package:my_portfolio/models/tech.dart';

class Project {
  final String title;
  final String description;
  final String url;
  final String iconAsset;
  final ProjectStatus projectStatus;
  final List<Tech> techStack;

  Project({
    required this.title,
    required this.description,
    required this.url,
    required this.iconAsset,
    required this.projectStatus,
    required this.techStack,
  });
}
