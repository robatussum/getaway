import 'package:flutter/material.dart';

class CarouselHeader extends StatelessWidget {
  final String title;
  final String filter;

  CarouselHeader({this.title, this.filter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
          GestureDetector(
            onTap: () => print(filter),
            child: Text(
              filter,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
