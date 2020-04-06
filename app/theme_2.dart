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
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white, 
          displayColor: Colors.blue, 
        ),
      ),
      home: MyHomePage(title: 'Flutter'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final String linkImg = "https://cdn.guidingtech.com/media/assets/WordPress-Import/2017/10/_1200x630_crop_center-center_82_none/Sound-waves-graphic-equalizer.jpg?mtime=1507900174";
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
      //appBar: AppBar(
        //title: Text(widget.title),
      //),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.menu, color: Colors.black),
                Icon(Icons.person, color: Colors.black),
              ]
            )
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0)
                    ) 
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_right, color: Colors.black),
                  )
                ),
                Container(
                  width: 190,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)
                    ) 
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:<Widget>[
                      Container(
                        width: 70,
                        height: 70,
                        child: Image(image: NetworkImage(widget.linkImg, scale: 5.0))
                      ),
                      Text("John Light")
                    ]
                  )
                ),
              ]
            )
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0)
                    ) 
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_right, color: Colors.black),
                  )
                ),
                Container(
                  width: 190,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)
                    ) 
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:<Widget>[
                      Container(
                        width: 70,
                        height: 70,
                        child: Image(image: NetworkImage(widget.linkImg, scale: 5.0))
                      ),
                      Text("John Light")
                    ]
                  )
                ),
              ]
            )
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0)
                    ) 
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_right, color: Colors.black),
                  )
                ),
                Container(
                  width: 190,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)
                    ) 
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:<Widget>[
                      Container(
                        width: 70,
                        height: 70,
                        child: Image(image: NetworkImage(widget.linkImg, scale: 5.0))
                      ),
                      Text("John Light")
                    ]
                  )
                ),
              ]
            )
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0)
                    ) 
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_right, color: Colors.black),
                  )
                ),
                Container(
                  width: 190,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)
                    ) 
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:<Widget>[
                      Container(
                        width: 70,
                        height: 70,
                        child: Image(image: NetworkImage(widget.linkImg, scale: 5.0))
                      ),
                      Text("John Light")
                    ]
                  )
                ),
              ]
            )
          ),
        ]
      ),
    );
  }
}