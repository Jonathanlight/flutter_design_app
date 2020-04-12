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
  final String background = "https://lh3.googleusercontent.com/proxy/LgWjzfHf6yiWdx51Eh9Qh8eqJ25qX5j8zVk93nNIT6sROgUXmu09p4u-MPA55SxnUi3_q8GI3RFFBQQTfqIdrDHp-RsEvHNakr-2l-YTSWkFoW8a_4iPjXZ7pTPMDBUx";
  final String logo = "https://www.reviews.org/au/app/uploads/2019/11/disney-plus-logo.png";
  
  final List<String> homeImages = [ "https://10wallpaper.com/wallpaper/1366x768/1911/The_Mandalorian_2019_Game_HD_Poster_1366x768.jpg",
    "https://cdn.wallpapersafari.com/76/45/3YpNqe.jpg"
  ];
  
  final List<String> recommandedForYou = [
    "https://fr.web.img2.acsta.net/pictures/16/09/09/08/57/518191.jpg",
    "https://www.fanactu.com/medias/une-nouvelle-serie-d-affiches-personnages-pour-avengers-endgame_11434/avengers-endgame---captain-marvel-desktop-194109.jpg",
    "https://www.dhresource.com/600x600/f2/albu/g7/M00/C8/C3/rBVaSVs3GuiAYtOPAAc1KmETVNg738.jpg"
  ];
  
  final List<String> tendances = [
    "https://marvelll.fr/wp-content/uploads/2019/10/the-mandalorian-serie-disney-poster-personnage.jpg",
    "https://www.ecranlarge.com/uploads/image/001/022/les-simpson-affiche-1022674.jpg",
    "https://lh3.googleusercontent.com/proxy/3YXp-JlGWqygnGS3-wi4DbTNWguLTQBgI2MHyuVxY3LhSR8k03EquEvGyrjvKy6zbyM_dK9YhyfDzSgYhi388jyCxawSvogbHenkDJe-l-a7A03BCCjtV8kGEHJ6Ww",
  ];
  
  final String disney = "https://pngimg.com/uploads/walt_disney/walt_disney_PNG38.png";
  final String pixar = "https://www.prophet.com/relevantbrands-2016/wp-content/uploads/2016/10/pixar-logo-white.png";
  final String marvel = "https://www.stickpng.com/assets/images/585f9333cb11b227491c3581.png";
  final String starwars = "https://i.pinimg.com/originals/95/e4/fd/95e4fd78946f22995eedd9a66e9b794d.png";
  final String nationalGeo = "https://pluspng.com/img-png/national-geographic-logo-png-logo-natgeo-png-pluspng-com-logo-national-geographic-png-1000.png";

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
                child: new Image.network(
                  widget.background,
                  width: size.width,
                  height: 700,
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
                            child: new Image.network(
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
                            height: 180,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: widget.homeImages.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index){
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(8.0),
                                              child: Image.network(
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
                              Container(
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
                                  child: Image.network(
                                    widget.disney,
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ),
                              Container(
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
                                  child: Image.network(
                                    widget.pixar,
                                    width: 70,
                                    height: 80,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              ),
                              Container(
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
                                  child: Image.network(
                                    widget.marvel,
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ),
                              Container(
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
                                  child: Image.network(
                                    widget.starwars,
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ),
                              Container(
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
                                  child: Image.network(
                                    widget.nationalGeo,
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ),
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
                                                  child: Image.network(
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
                                                  child: Image.network(
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
}