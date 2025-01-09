import 'package:flutter/material.dart';
import 'package:yara/utils/constants/GenericContants.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();

    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        children: [
          TextField(
            controller: _searchController,
            style: getSearchFieldTextStyle(),
            decoration: InputDecoration(
                hintText: "Search",
                hintStyle: getSearchFieldTextStyle(),
                filled: true,
                fillColor: Color(0xffA8A8A8),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8), gapPadding: 0)),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getSearchByFilterButtons(
                  GenericConstants.DATE, Colors.pinkAccent, null),
              getSearchByFilterButtons(
                  GenericConstants.CATEGORY, Colors.lightBlueAccent, null),
              getSearchByFilterButtons(
                  GenericConstants.STATUS, Colors.greenAccent, null),
            ],
          )
        ],
      ),
    );
  }

  TextStyle getSearchFieldTextStyle() {
    return TextStyle(color: Colors.white70);
  }

  MaterialButton getSearchByFilterButtons(
      String text, Color color, VoidCallback? onPressed) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(6), color: color),
        child: Text(text),
      ),
    );
  }
}
