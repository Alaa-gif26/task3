import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../components/Custom_list_view.dart';

class AnimatedListScreen extends StatefulWidget {
  const AnimatedListScreen({super.key});

  @override
  State<AnimatedListScreen> createState() => _FlutterMapState();
}

class _FlutterMapState extends State<AnimatedListScreen> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Flutter Map"),
      ),
      body:

          Column(
        children: [
          IconButton(
              onPressed: () {setState(() {
                
              });
              },
              icon: Icon(Icons.add)),
          Expanded(child: CustomListView()),
        ],
      ),
    );
  }
}
