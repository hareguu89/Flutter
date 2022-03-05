import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: 'Pracatice App',
      home: const TodoList(),
    );
  }
}

class Todo {
  bool isDone = false;
  String title;

  Todo(this.title);
}

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final _items = <Todo>[];
  final _todoController = TextEditingController();

  @override
  void dispose() {
    _todoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('남은 할일'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _todoController,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _addTodo(Todo(_todoController.text));
                  },
                  child: const Text('추가'),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: _items.map((data) => _buildItemWidget(data)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(Todo todo) {
    return ListTile(
      onTap: () => _toggleTodo(todo),
      title: Text(todo.title,
          style: todo.isDone
              ? const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontStyle: FontStyle.italic)
              : null),
      trailing: IconButton(
        icon: const Icon(Icons.delete_forever),
        onPressed: () => _deleteTodo(todo),
      ),
    );
  }

  void _addTodo(Todo todo) {
    setState(() {
      _items.add(todo);
      _todoController.text = "";
    });
  }

  void _deleteTodo(Todo todo) {
    setState(() {
      _items.remove(todo);
      print(_items);
    });
  }

  void _toggleTodo(Todo todo) {
    todo.isDone = !todo.isDone;
  }
}

// class Grade extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.amber,
//         appBar: AppBar(
//           title: Text('메뉴!!'),
//           backgroundColor: Colors.amber[700],
//           centerTitle: true,
//           elevation: 0.0,
//         ),
//         body: Padding(
//           padding: EdgeInsets.fromLTRB(40.0, 30.0, 0.0, 0.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 '이름',
//                 style: TextStyle(color: Colors.white, letterSpacing: 2.0),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Text(
//                 '박정환',
//                 style: TextStyle(
//                     color: Colors.white,
//                     letterSpacing: 2.0,
//                     fontSize: 28.0,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               Text(
//                 '가능스택',
//                 style: TextStyle(color: Colors.white, letterSpacing: 2.0),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Text(
//                 '개많음!!',
//                 style: TextStyle(
//                     color: Colors.white,
//                     letterSpacing: 2.0,
//                     fontSize: 28.0,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               Row(children: <Widget>[
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   'react',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     letterSpacing: 1.0,
//                   ),
//                 )
//               ]),
//               Row(children: <Widget>[
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   'vue',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     letterSpacing: 1.0,
//                   ),
//                 )
//               ]),
//               Row(children: <Widget>[
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   'flutter',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     letterSpacing: 1.0,
//                   ),
//                 )
//               ])
//             ],
//           ),
//         ),
//         bottomNavigationBar: Padding(
//           padding: EdgeInsets.fromLTRB(40, 0, 30, 40),
//           child: BottomAppBar(
//               child: Text('Rock Bottom'), color: Colors.orangeAccent),
//         ));
//   }
// }
