import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'stickers.dart' as stickers ;

class grids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: .99,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children : <Widget>[
            stickers.Sticker(
              title : "YourInterest"
            ),
          stickers.Sticker(
              title : "Top Sellers"
          ),
          stickers.Sticker(
              title : "Categories"
          ),
          stickers.Sticker(
              title : "Mostly Searched"
          ),
        ],
              ),
            );
  }
}
