import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final String img = "https://upload.wikimedia.org/wikipedia/commons/f/f4/User_Avatar_2.png";
  final List<String> gateaux = [
    "https://cdn.pratico-pratiques.com/app/uploads/sites/3/2018/08/20193024/gateau-au-chocolat-et-nutella.jpeg",
    "https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/elle-a-table/recettes-de-cuisine/gateau-nuage-amande-et-framboise-3714396/88387447-1-fre-FR/Gateau-nuage-amande-et-framboise.jpg",
    "https://www.hervecuisine.com/wp-content/uploads/2016/06/recette-gateau-anniversaire-chocolat-1024x683.jpg",
    "https://cdn.pratico-pratiques.com/app/uploads/sites/3/2018/08/20195254/gateau-s-mores.jpeg"
  ];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          
        ]
      ),
    );
  }
}