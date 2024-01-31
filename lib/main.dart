import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Application from 6488042',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'u6488042'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Monkey.D.luffy",
                description: "DEAD OR ALIVE",
                price: 3000000000,
                image: "1.png"),
            ProductBox(
                name: "Roronoa Zoro",
                description: "DEAD OR ALIVE",
                price: 320000000,
                image: "2.png"),
            ProductBox(
                name: "Nami",
                description: "DEAD OR ALIVE",
                price: 66000000,
                image: "3.png"),
            ProductBox2(
                name: "Usopp",
                description: "DEAD OR ALIVE",
                price: 200000000,
                image:
                    "https://ctl.s6img.com/society6/img/hj0P8IO1tkAr9HioimVenws-CFU/w_700/canvas/~artwork/s6-original-art-uploads/society6/uploads/misc/f169b0e3e82147489d32b957839e39c0/~~/god-usopp-wanted-poster-canvas.jpg"),
            ProductBox2(
                name: "Vinsmoke Sanji",
                description: "DEAD OR ALIVE",
                price: 330000000,
                image:
                    "https://render.fineartamerica.com/images/rendered/default/poster/5.5/8/break/images/artworkimages/medium/3/vinsmoke-sanji-bounty-wanted-poster-one-piece-shiro-vexel.jpg"),
            ProductBox2(
                name: "Tony Tony Chopper",
                description: "DEAD OR ALIVE",
                price: 1000,
                image:
                    "https://ctl.s6img.com/society6/img/ZJbMCC44JBFRjdqURA_S9FAfc8w/w_700/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/51d3967b8ef444108393561375fd8da4/~~/tony-tony-chopper-wanted-poster-prints.jpg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/app_image/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text('Price: ${this.price}'),
                        ],
                      )))
            ])));
  }
}

class ProductBox2 extends StatelessWidget {
  ProductBox2(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text('Price: ${this.price}'),
                        ],
                      )))
            ])));
  }
}
