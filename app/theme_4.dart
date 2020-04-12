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
  final String img = "https://www.hdcarwallpapers.com/walls/2017_ds_7_crossback_la_premiere-HD.jpg";
  final String logo = "https://www.stickpng.com/assets/images/5860f2034fc7f3474eb80d9d.png";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  bool _obscureText = false;
  
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    FocusNode myFocusNode = new FocusNode();
    
    return Scaffold(
      //appBar: AppBar(
        //title: Text(widget.title),
      //),
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.network(widget.img,
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              color: Colors.black.withOpacity(0.4),
              width: size.width - 20,
              height: size.height - 20,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.0, left: 10.0, right: 10.0, bottom: 5.0
                      ),
                      child: Divider(
                        height: 0.1, 
                        color: Colors.grey,
                        thickness: 2, 
                        indent: 10, 
                        endIndent: 10
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50.0, left: 10.0, right: 10.0, bottom: 5.0
                      ),
                      child: Container(
                        child: Center(
                          child: Image.network(
                            widget.logo,
                            height: 100,
                            width: 100,
                            color: Colors.red,
                            colorBlendMode: BlendMode.darken,
                            fit: BoxFit.fitWidth,
                          ),
                        )
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 150.0, left: 10.0, right: 10.0, bottom: 5.0),
                      child: Container(
                        width: size.width - 10,
                        height: 60.0,
                        child: Center(
                          child: new Theme(
                            data: new ThemeData(
                              primaryColor: Colors.white,
                              primaryColorDark: Colors.white,
                              cursorColor: Colors.white,
                              hintColor: Colors.white
                            ),
                            child: new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter Username",
                                labelStyle: TextStyle(
                                  color: myFocusNode.hasFocus ? Colors.white : Colors.white
                                ),
                                enabledBorder: new UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid
                                  )
                                ),
                                fillColor: Colors.white,
                                filled: false,
                                isDense: true, 
                                contentPadding: EdgeInsets.all(7), 
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  borderSide: new BorderSide(color: Colors.red),
                                ),
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              ),
                              validator: (val) {
                                if(val.length==0) {
                                  return "Email cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          )
                        )
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.0, left: 10.0, right: 10.0, bottom: 5.0),
                      child: Container(
                        width: size.width - 10,
                        height: 60.0,
                        child: Center(
                          child: new Theme(
                            data: new ThemeData(
                              primaryColor: Colors.white,
                              primaryColorDark: Colors.white,
                              cursorColor: Colors.white,
                              hintColor: Colors.white,
                            ),
                            child: new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter Password",
                                labelStyle: TextStyle(
                                  color: myFocusNode.hasFocus ? Colors.white : Colors.white
                                ),
                                enabledBorder: new UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid
                                  )
                                ),
                                fillColor: Colors.white,
                                filled: false,
                                isDense: true, 
                                contentPadding: EdgeInsets.all(7), 
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  borderSide: new BorderSide(color: Colors.red),
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                    color: Colors.white,
                                  ),
                                  onPressed: _toggle,
                                ),
                              ),
                              validator: (val) {
                                if(val.length==0) {
                                  return "Password cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _obscureText,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.white,
                              ),
                            ),
                          )
                        )
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.0, left: 10.0, right: 10.0, bottom: 5.0),
                      child: new MaterialButton( 
                        height: 40.0, 
                        minWidth: size.width - 10, 
                        color: Theme.of(context).primaryColor, 
                        textColor: Colors.white, 
                        child: new Text("Enregistrer"), 
                        onPressed: () => {}, 
                        splashColor: Colors.black,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                      )
                    )
                  ]
                )
              )
            )
          ),
          
        ],
      ),
    );
  }
}