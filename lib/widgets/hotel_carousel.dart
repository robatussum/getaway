import 'package:flutter/material.dart';
import '../models/hotel_model.dart';
import 'carousel_header.dart';
import 'fancy_hotel_card.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselHeader(
          title: 'Exclusive Hotels',
          filter: 'See All',
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              Hotel hotel = hotels[index];
              return FancyHotelCard(
                hotel: hotel,
              );
            },
          ),
        ),
      ],
    );
  }
}
