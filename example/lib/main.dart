import 'package:flutter/material.dart';
import 'package:extension_kit/extension_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: GestureDetector(
        child: Center(
          child: Text('width: ${context.deviceWidth}, height: ${context.deviceHeight}\n'
              'Dark: ${context.isDark}\n'),
        ),
        onTap: () => context.hideKeyboard(),
      ),
    );
  }
}