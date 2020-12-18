import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'interest.dart' as interests ;
import 'topsellers.dart' as topsellers;
import 'categories.dart' as categories;
import 'mostlysearch.dart' as mostly;
class Sticker extends StatelessWidget {
  @override
  final String title;
  // when you can add the final String svgSrc here as well.
  const Sticker({
    Key key,
    this.title ,
}) : super(key : key); 
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      if(title == "YourInterest")
      {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => interests.interest()),
        );
      }
      else if(title == "Top Sellers")
        {

          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => topsellers.topseller()),
          );
        }
      else if(title == "Categories") {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => categories.categories()),
        );
      }
      else if(title == "Mostly Searched") {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => mostly.mostlysearched()),
          );
        }
      },
      child: Container( 
        padding : EdgeInsets.all(20),
        decoration: BoxDecoration(
          color : Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0,17),
              blurRadius: 50,
              spreadRadius: -15,
            ),
          ],
          borderRadius: BorderRadius.circular(13),
        ),
        child :  Column(
          children: <Widget> [
            Spacer(),
            // svg here
            Spacer(),
            Text(
              title,
              textAlign: TextAlign.center,
              style : Theme.of(context).textTheme.title.copyWith(fontSize:15),
            ),
          ],
        ),
      ),
    );
  }
}
