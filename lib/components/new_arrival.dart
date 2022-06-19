import 'package:flutter/material.dart';
import 'package:shop_app/details/details_screen.dart';

import '../repository/products_repository.dart';
import 'product_card.dart';
import 'section_title.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
    required this.p,
  }) : super(key: key);

  final ProductsRepository p;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Nova Chegada", pressSeeAll: () {}),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                p.tabela.length,
                (index) => ProductCard(
                    image: p.tabela[index].image,
                    title: p.tabela[index].title,
                    price: p.tabela[index].price,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen()));
                    })),
          ),
        )
      ],
    );
  }
}
