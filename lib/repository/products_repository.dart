import '../models/products.dart';

class ProductsRepository{
  static List<Products> tabela_products = [
    Products(image: 'assets/images/product_0.png', title: "Camisas de manga comprida", price: "165"),
    Products(image: 'assets/images/product_1.png', title: "Camisa Henley Casual", price: "120"),
    Products(image: 'assets/images/product_2.png', title: "Jaqueta", price: "120"),
    Products(image: 'assets/images/product_3.png', title: "Camisa Casual", price: "120"),
  ];

  get tabela{
    return tabela_products;
  }
}