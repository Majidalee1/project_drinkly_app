import 'package:drinkly/models/message_mode.dart';
import 'package:flutter/material.dart';

class FavoriteContracts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Favorite Contracts"),
              Icon(
                Icons.contact_mail,
                size: 30.0,
              ),
            ],
          ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            itemCount: favorites.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(favorites[index].imageUrl),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      favorites[index].name,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
