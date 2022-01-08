import 'package:flutter/material.dart';
import 'package:flutter_application_1/post_state.dart';
import 'package:provider/provider.dart';

import 'post_view.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostState()),
      ],
      child: const MApp(),
    ),
  );
}

class MApp extends StatelessWidget {
  const MApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostView(),
    );
  }
}
