import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', "Online", "Groups", 'Resources'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext ctx, int index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color: selectedIndex == index
                          ? Colors.white
                          : Colors.white70,
                      fontSize: 24.0,
                      letterSpacing: 1.0),
                ),
              ),
            );
          }),
    );
  }
}
