import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
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
          _buildListItem('Delicious hot dog', 4.0, '9.79', widget.gateaux[0]),
          _buildListItem('Pizza', 4.0, '10.79', widget.gateaux[1]),
          _buildListItem('Tomates', 4.0, '9.79', widget.gateaux[2]),
          _buildListItem('Delicious', 4.0, '9.79', widget.gateaux[3]),
        ]
      ),
    );
  }
  
  _buildListItem(String foodName, rating, String price, String imgPath) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 210.0,
            child: Row(
              children: [
                Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.black
                  ),
                  child: Center(
                    child: Image.network(imgPath, height: 50.0, width: 50.0)
                  )
                ),
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    Text(
                      foodName,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '\$' + price,
                        ),
                        SizedBox(width: 3.0),
                        Text(
                          '\$' + '18',
                        )
                      ],
                    )
                  ], 
                )
              ]
            ),
          ),
          FloatingActionButton(
            heroTag: foodName,
            mini: true,
            onPressed: () {},
            child: Center(
              child: Icon(Icons.add, color: Colors.white)
            ),
            backgroundColor: Colors.pink
          )
        ],
      ),
    );
  }
}