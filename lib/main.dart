import "package:flutter/material.dart";

import "config/set_up.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setUp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Text("Hello World"),
          ),
        ),
      );
}
