class Task {
  String task;
  DateTime time;

  Task({this.task, this.time});

  factory Task.fromString(String task) {
    return Task(
      task: task,
      time: DateTime.now(),
    );
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      task: map['task'],
      time: DateTime.fromMillisecondsSinceEpoch(map['time']),
    );
  }

  Map<String, dynamic> getMap() {
    return {
      'task': this.task,
      'time': this.time.millisecondsSinceEpoch,
    };
  }
}
