import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CustomListView extends StatefulWidget {
  CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  List<String> items = ["item 1", "item 2", "item 3", "item 4", "item 5"];
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: const Duration(milliseconds: 200),
              child: SlideAnimation(
                duration: Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                horizontalOffset: -300,
                verticalOffset: -850,
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      tileColor: Colors.yellow,
                      title: Text(" ${items[index]}"),
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              items.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.delete)),
                    )),
              ),
            );
          }),
    );
  }
}
