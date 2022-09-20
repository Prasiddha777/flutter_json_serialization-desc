import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newtry/models/homesnmodels.dart';
import 'package:newtry/models/todomodels.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadTodoList();
  }

  loadTodoList() async {
    //👍delay gardim na haina
    await Future.delayed(Duration(seconds: 3));
    //👍path ko json to decode;
    var todokodata = await rootBundle.loadString("assets/files/todos.json");
    //👍to decode
    var decodetodo = jsonDecode(todokodata);
    // print(decodetodo);
    //👍map garni majaley
    // var decodedlist = decodetodo[''];
    // print(decodedlist);
    TodoModel.item = List.from(decodetodo)
        .map((todoitem) => TodoItem.fromMap(todoitem))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Model for Todo list"),
      ),
      body: (TodoModel.item.isNotEmpty && TodoModel.item != null)
          ? ListView.builder(
              itemCount: TodoModel.item.length,
              itemBuilder: (context, index) {
                var todomodel = TodoModel.item[index];
                print(todomodel);
                return ListTile(
                  title: Text(todomodel.title),
                  trailing: Text(todomodel.id.toString()),
                  subtitle: Text(todomodel.completed.toString()),
                );
              })
          : Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.black,
              ),
            ),
    );
  }
}
