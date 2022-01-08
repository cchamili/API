import 'package:flutter/material.dart';
import 'package:flutter_application_1/post_state.dart';
import 'package:provider/src/provider.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("POST"),
          onPressed: () {
            context.read<PostState>().load();
          },
        ),
      ),
    );
  }
}
