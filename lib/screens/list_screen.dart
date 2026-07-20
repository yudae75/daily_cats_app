import 'package:flutter/material.dart';

import '../models/cat.dart';

final List<Cat> cats = [
  Cat(
    id: '0',
    name: 'Cat 0',
    title: 'Cat 0',
    link: 'assets/images/cat_00.jpg',
    likeCount: 1930,
    replyCount: 6,
    created: DateTime(2022, 11, 13, 22, 14, 53, 982),
  ),
  Cat(
    id: '1',
    name: 'Cat 1',
    title: 'Cat 1',
    link: 'assets/images/cat_01.jpg',
    likeCount: 0,
    replyCount: 0,
    created: DateTime.now(),
  ),
  Cat(
    id: '2',
    name: 'Cat 2',
    title: 'Cat 2',
    link: 'assets/images/cat_02.jpg',
    likeCount: 0,
    replyCount: 0,
    created: DateTime.now(),
  ),
  Cat(
    id: '3',
    name: 'Cat 3',
    title: 'Cat 3',
    link: 'assets/images/cat_03.jpg',
    likeCount: 0,
    replyCount: 0,
    created: DateTime.now(),
  ),
  Cat(
    id: '4',
    name: 'Cat 4',
    title: 'Cat 4',
    link: 'assets/images/cat_04.jpg',
    likeCount: 0,
    replyCount: 0,
    created: DateTime.now(),
  ),
];

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Cats'),
        actions: [
          IconButton(icon: const Icon(Icons.camera_alt), onPressed: () {}),
        ],
      ),

      body: GridView.builder(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: cats.length,
        itemBuilder: (_, int index) => GestureDetector(
          onTap: () {},
          child: Image.asset(cats[index].link, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
