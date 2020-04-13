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
  final String background = "assets/img/background.png";
  final String logo = "assets/img/logo.png";
  
  final List<String> homeImages = [ 
    "assets/img/affiche_mandalorian.png",
    "assets/img/affiche_starwars.png"
  ];
  
  final List<String> recommandedForYou = [
    "assets/img/doctor-strainge.png",
    "assets/img/avengers-endgame.png",
    "assets/img/venom.png"
  ];
  
  final List<String> tendances = [
    "assets/img/mandalorian.png",
    "assets/img/simpson.png",
    "assets/img/lmulan.png",
  ];
  
  final String disney = "assets/img/logo_disney.png";
  final String pixar = "assets/img/logo_pixar.png";
  final String marvel = "assets/img/logo_marvel.png";
  final String starwars = "assets/img/logo_starwars.png";
  final String nationalGeo = "assets/img/logo_national-geographic.png";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: size.height,
                width: double.infinity,
              ),
              Center(
                child: Image.asset(
                  widget.background,
                  width: size.width,
                  height: 760,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Container(
                  width: size.width - 2,
                  height: 700,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(
                            child: new Image.asset(
                              widget.logo,
                              width: 90.0,
                              height: 60.0,
                              fit: BoxFit.contain,
                            )
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0),
                          child: Container(
                            height: 210,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: widget.homeImages.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index){
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    height: 200,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                widget.homeImages[index],
                                                width: size.width - 50,
                                                height: size.height - 400,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]
                                    )  
                                  )
                                );
                              }
                            )
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              _itemContainer(widget.disney),
                              _itemContainer(widget.pixar),
                              _itemContainer(widget.marvel),
                              _itemContainer(widget.starwars),
                              _itemContainer(widget.nationalGeo),
                            ]
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 15.0),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              Positioned(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Univers Marvel',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800, 
                                      fontSize: 15.0, color: Colors.white
                                    ),
                                  )
                                )
                              )
                            ]
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                          child: Container(
                            height: 145,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: widget.recommandedForYou.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index){
                                return Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Stack(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(3.0),
                                                  child: Image.asset(
                                                    widget.recommandedForYou[index],
                                                    height: 140,
                                                    width: 100,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ]
                                        )
                                      ]
                                    )
                                  )  
                                );
                              }
                            )
                          )  
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 15.0),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              Positioned(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Tendances',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800, 
                                      fontSize: 15.0, color: Colors.white
                                    ),
                                  )
                                )
                              )
                            ]
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                          child: Container(
                            height: 145,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: widget.recommandedForYou.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index){
                                return Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Stack(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(3.0),
                                                  child: Image.asset(
                                                    widget.tendances[index],
                                                    height: 140,
                                                    width: 100,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ]
                                        )
                                      ]
                                    )
                                  )  
                                );
                              }
                            )
                          )  
                        ),
                      ]
                    )
                  )
                ),
              )
            ],
          ),
        ]
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.blue[900],
          primaryColor: Colors.white,
          textTheme: Theme
          .of(context)
          .textTheme
          .copyWith(caption: new TextStyle(color: Colors.grey))),
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text(""),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text(""),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.vertical_align_bottom),
              title: new Text(""),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: new Text(""),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemContainer(String image){
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.1,
            0.3,
            0.6,
            0.9
          ],
          colors: [
            Colors.blue[900],
            Colors.blue[900],
            Colors.blue[800],
            Colors.blue[900]
          ]),
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.white,width: 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
          bottomLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0)
        ) 
      ),
      child: Center(
        child: Image.asset(
          image,
          width: 40,
          height: 40,
          fit: BoxFit.contain,
        ),
      )
    );
  }
}