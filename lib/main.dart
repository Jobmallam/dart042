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
                    "https://drive.google.com/file/d/1EU_o3knXyVvk-Kr_I6xV6F782PX_Jq0w/view?usp=sharing"),
            ProductBox2(
                name: "Vinsmoke Sanji",
                description: "DEAD OR ALIVE",
                price: 330000000,
                image:
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.ebay.co.uk%2Fitm%2F143958826091&psig=AOvVaw0YNYwpcN0QYtgQZtChfoDY&ust=1706764255759000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPDj-cLuhoQDFQAAAAAdAAAAABAH"),
            ProductBox2(
                name: "Tony Tony Chopper",
                description: "DEAD OR ALIVE",
                price: 1000,
                image:
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F1125055550647580845%2F&psig=AOvVaw0gzmPJPyt-U9jZ6SZpbg3O&ust=1706764203638000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIiDyqTuhoQDFQAAAAAdAAAAABAI"),
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
