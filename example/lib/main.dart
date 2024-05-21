import 'package:flutter/material.dart';

import 'package:cache_img/img_cached_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('example app'),
        ),
        body: const Center(
          child: SizedBox(
            height: 150,
            child: CacheImageWidget(
              imageUrl: "http://via.placeholder.com/450x150",
            ),
          ),
        ),
      ),
    );
  }
}
