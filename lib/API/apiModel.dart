class Data {
  int userId;
  int id;
  String title;
  bool completed;

  Data({required this.userId, required this.id, required this.title, required this.completed});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}
