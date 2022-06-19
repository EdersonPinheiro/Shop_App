import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.press})
      : super(key: key);

  final String image, title, price;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: EdgeInsets.all(25 / 2),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFEFEFF2),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            SizedBox(
              height: 25 / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Text("\$" + price),
                SizedBox(
                  width: 25 / 4,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
