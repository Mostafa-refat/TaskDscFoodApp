import 'package:flutter/material.dart';

Widget foodCard(String img, String title, String price) {
  return Container(
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              img,
              height: 100,
            ),
            SizedBox(height: 8),
            Flexible(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "${price} L.E",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
