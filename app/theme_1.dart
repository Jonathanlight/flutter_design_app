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
      //appBar: AppBar(
        //title: Text(widget.title),
      //),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.menu, color: Colors.black),
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 6.0,
                        spreadRadius: 4.0,
                        offset: Offset(0.0, 3.0)
                      )
                    ],
                    color: Color(0xFFC6E7FE),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(widget.img),
                      fit: BoxFit.cover
                    )
                  )
                ),    
              ]
            )
          ),
          Divider(height: 0.1, color: Colors.grey,thickness: 2, indent: 15, endIndent: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10.0),
            child: Text(
              'Joyeux Anniversaire',
              style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 27.0
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
            child: Container(
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.gateaux.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      widget.gateaux[index],
                                      height: 165,
                                      width: 165,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 5.0,
                                bottom: 0.0,
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 2.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                  ),
                                  child: Container(
                                    width: 100,
                                    height: 30,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "30 - 35 min",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ),
                            ]
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Gateaux delice - 30.99€",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]
                      )
                    ),
                  );
                },
              ),
            ),
          ),
        ]
      ),
      bottomNavigationBar:new BottomNavigationBar(fixedColor: Colors.green,items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text("Home"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.comment),
          title: new Text("Comments"),
        )
      ]),
    );
  }
}