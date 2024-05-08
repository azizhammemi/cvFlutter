import 'package:flutter/material.dart';
import 'screen/tab.bar.screen.dart';
import 'screen/lodingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isNormalTheme = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV',
      theme: isNormalTheme
          ? ThemeData(
        backgroundColor: Colors.white,
        canvasColor: Colors.lightBlue.shade100,
        cardColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      )
          : ThemeData(
        backgroundColor: Colors.black87,
        canvasColor: Colors.black,
        cardColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _isLoading ? LoadingPage() : TabBarState(switchTheme),
    );
  }

  void switchTheme() {
    setState(() {
      isNormalTheme = !isNormalTheme;
    });
  }

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() async {
    setState(() {
      _isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }
}
