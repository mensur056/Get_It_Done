class Task {
  final String title;
  final String color;
  final int icon;
  final List<dynamic>? todos;

  const Task({
    required this.title,
    required this.color,
    required this.icon,
    this.todos,
  });
}
