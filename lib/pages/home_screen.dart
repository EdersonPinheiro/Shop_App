import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants.dart';
import '../category_card.dart';
import '../components/new_arrival.dart';
import '../components/popular.dart';
import '../repository/products_repository.dart';
import '../components/search_form.dart';
import '../services/notifications_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool valor = false;
  showNotification() {
    setState(() {
      valor = !valor; //valor = diferença do valor ou seja fica trocando pra true e false assim que clica no botao
      if (valor) {
        // se verdadeiro
        Provider.of<NotificationService>(context, listen: false)
            .showNotification(CustomNotification(
                id: 1,
                title: 'Test',
                body: 'Desconto de 50% para você!',
                payload: '/notification'));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ProductsRepository p = new ProductsRepository();
    return Scaffold(
      backgroundColor: bgColor,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent, //deixa transparente
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(children: [
          SvgPicture.asset("assets/icons/Location.svg"),
          Text(
            "Maringá - PR",
            style: Theme.of(context).textTheme.subtitle2,
          )
        ]),
        actions: [
          IconButton(
            onPressed: () {
              showNotification();
            },
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Explore",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const Text(
            "os melhores Outfits para você",
            style: TextStyle(fontSize: 18),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: SearchForm(),
          ),
          const Categories(),
          const SizedBox(
            height: 5,
          ),
          NewArrival(p: p),
          const SizedBox(
            height: 20,
          ),
          Popular(p: p)
        ]),
      ),
    );
  }
}
