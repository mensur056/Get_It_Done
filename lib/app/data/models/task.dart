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

  Task copyWith({
    int? icon,
    String? title,
    String? color,
    List<dynamic>? todos,
  }) =>
      Task(
          title: title ?? this.title,
          color: color ?? this.color,
          todos: todos ?? this.todos,
          icon: icon ?? this.icon);

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        title: json['title'],
        color: json['color'],
        icon: json['icon'],
        todos: json['todos'],
      );

  Map<String, dynamic> toJason() =>
      {'title': title, 'icon': icon, 'color': color, 'todos': todos};
}
