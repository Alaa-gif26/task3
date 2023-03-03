import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FlutterMap extends StatefulWidget {
  const FlutterMap({super.key});

  @override
  State<FlutterMap> createState() => _FlutterMapState();
}

class _FlutterMapState extends State<FlutterMap> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Color.fromARGB(255, 3, 25, 39),
        appBar: AppBar(elevation: 0,
          title: const Center(child: Text("Flutter Map")),
          
        ),
        body:Center(
          child: Column(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
              ListView( ),
            ],
          ),
        )
      );
  }
}