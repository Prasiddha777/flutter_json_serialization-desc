class TodoItem {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  TodoItem(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  //decode(json => object) 👍 --> named constructor
  factory TodoItem.fromMap(Map<String, dynamic> map) {
    return TodoItem(
      userId: map["userId"],
      id: map["id"],
      title: map['title'],
      completed: map["completed"],
    );
  }
  //enocode(object => map garni )
  toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}

class TodoModel {
  static List<TodoItem> item = [];
  // [
  //   TodoItem(
  //     userId: 1,
  //     id: 1,
  //     title: "title",
  //     completed: true,
  //   ),
  //   TodoItem(
  //     userId: 1,
  //     id: 1,
  //     title: "title",
  //     completed: true,
  //   ),
  //   TodoItem(
  //     userId: 1,
  //     id: 1,
  //     title: "title",
  //     completed: true,
  //   ),
  //   TodoItem(
  //     userId: 1,
  //     id: 1,
  //     title: "title",
  //     completed: true,
  //   ),
  //   TodoItem(
  //     userId: 1,
  //     id: 1,
  //     title: "title",
  //     completed: true,
  //   ),
  //   TodoItem(
  //     userId: 1,
  //     id: 1,
  //     title: "title",
  //     completed: true,
  //   ),
  //   TodoItem(
  //     userId: 1,
  //     id: 1,
  //     title: "title",
  //     completed: true,
  //   ),
  // ];
}
