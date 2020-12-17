import 'package:drinkly/models/usage_data.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class TdsData extends StatelessWidget {
  const TdsData({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Tdsdata.map((item) {
        return Container(
          padding: EdgeInsets.all(30.0),
          child: ExpandablePanel(
            header: Container(
              padding: EdgeInsetsDirectional.only(bottom: 30),
              child: Text(
                item.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            expanded: item.hasImg == true
                ? Column(
                    children: [
                      Text(item.data),
                      Divider(height: 30),
                      Image.asset(item.imgUrl),
                    ],
                  )
                : Text(item.data),
          ),
        );
      }).toList(),
    );
  }
}

var expandedTextWidget = Container(
    padding: EdgeInsets.all(30.0),
    child: ExpandablePanel(
      header: Container(
          child: Text(
        Tdsdata[0].title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      )),
      // collapsed: Container(
      //   padding: EdgeInsets.all(30.0),
      //   child: Text(
      //     Tdsdata[0].data,
      //     softWrap: true,
      //     maxLines: 2,
      //     overflow: TextOverflow.ellipsis,
      //   ),
      // ),
      expanded: Container(
        child: Text(
          Tdsdata[0].data,
          softWrap: true,
        ),
      ),
      // tapHeaderToExpand: true,
      // hasIcon: true,
    ));
