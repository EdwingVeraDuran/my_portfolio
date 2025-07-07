class Tech {
  final String label;
  final String url;

  Tech({required this.label, required this.url});

  static Tech python() => Tech(label: 'Python', url: 'https://www.python.org/');
  static Tech flutter() => Tech(label: 'Flutter', url: 'https://flutter.dev/');
  static Tech bloc() => Tech(label: 'Bloc', url: 'https://bloclibrary.dev/');
  static Tech intl() =>
      Tech(label: 'intl', url: 'https://pub.dev/packages/intl');
  static Tech shadcn() =>
      Tech(label: 'Shadcn/UI', url: 'https://pub.dev/packages/shadcn_flutter');
}
