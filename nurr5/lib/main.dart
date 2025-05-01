import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/post_bloc.dart';
import 'repository/post_repository.dart';
// ignore: unused_import
import 'bloc/post_event.dart';
import 'pages/posts_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PostRepository repository = PostRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BLoC Demo',
      home: BlocProvider(
        create: (context) => PostBloc(repository),
        child: PostsPage(),
      ),
    );
  }
}
