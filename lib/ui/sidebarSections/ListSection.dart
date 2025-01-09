import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class ListSection extends StatelessWidget {
  final List<Tuple2<String, bool>> projectHeads = const [
    Tuple2<String, bool>("Project 1", true),
    Tuple2<String, bool>("Project 2", false),
    Tuple2<String, bool>("Project 3", false),
    Tuple2<String, bool>("Project 4", false),
  ];

  const ListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        itemCount: projectHeads.length,
        itemBuilder: (context, index) {
          return projectListTile(
              projectHeads[index].item1, projectHeads[index].item2);
        },
      ),
    );
  }

  Widget projectListTile(String text, bool status) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 16),
      onPressed: () {},
      child: Row(
        children: [
          Icon(Icons.tag, size: 28),
          SizedBox(width: 10),
          Text(
            text,
            style: status
                ? TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )
                : TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
          )
        ],
      ),
    );
  }
}
