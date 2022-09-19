import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movies_app/utils/theme.dart';

Widget ItemList(String image, String movie, String genre, double rating) {
  return Row(
    children: [
      Container(
        height: 127,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
      const SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(
              text: movie,
              style: title.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
              children: [
                TextSpan(
                    text: '\n$genre',
                    style: subtitle.copyWith(
                      fontSize: 16,
                    ))
              ])),
          const SizedBox(height: 20),
          RatingBar(
            onRatingUpdate: (double value) {},
            itemSize: 18,
            initialRating: rating,
            ratingWidget: RatingWidget(
                full: const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                half: const SizedBox(),
                empty: Icon(
                  Icons.star,
                  color: grey,
                )),
          )
        ],
      ),
    ],
  );
}
