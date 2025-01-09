import 'package:flutter/material.dart';

class QuickGlanceSection extends StatelessWidget {
  const QuickGlanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.8,
        crossAxisCount: 2,
        children: List.generate(4, (index) {
          return Container(
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.grey),
            child: MaterialButton(
              onPressed: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Something",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  Text("123",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
