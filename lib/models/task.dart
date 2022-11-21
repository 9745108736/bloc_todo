import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Task extends Equatable {
  final String? title;
  final String? id;
  bool? isDone;
  bool? isDeleted;

  Task({
    this.id,
    this.title,
    this.isDone,
    this.isDeleted,
  }) {
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
  }

  Task copyWith({
    String? id,
    String? title,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      isDeleted: isDeleted ?? this.isDeleted,
      isDone: isDone ?? this.isDone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'isDone': isDone,
      'isDeleted': isDeleted,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map["id"] ?? '',
      title: map["title"] ?? '',
      isDone: map["isDone"],
      isDeleted: map["isDeleted"],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        isDone,
        isDeleted,
      ];
}
