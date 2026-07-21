import 'package:flutter/material.dart';

import '../models/cat.dart';

final List<String> replies = [];

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.cat});

  final Cat cat;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.cat.title)),
      body: ListView(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        physics: const ClampingScrollPhysics(),
        children: [
          //TBD

          //TBD
        ],
      ),
    );
  }
}
