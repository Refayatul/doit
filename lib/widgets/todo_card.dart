import 'package:doit/models/todo_items.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatefulWidget {
  final TodoItem todoItem;
    const TodoCard({super.key, required this.todoItem});
    
  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
