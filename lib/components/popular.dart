import 'package:flutter/material.dart';

import '../repository/products_repository.dart';
import 'product_card.dart';
import 'section_title.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
    required this.p,
  }) : super(key: key);

  final ProductsRepository p;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular", pressSeeAll: () {}),
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
                    press: () {})),
          ),
        )
      ],
    );
  }
}