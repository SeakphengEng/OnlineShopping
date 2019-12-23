import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 100,
                    child: Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(320),
                        color: Colors.blue
                      ),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: 100,
                    color: Colors.green,
                  ),
                  Positioned(
                    bottom: 100,
                    left: 200,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.purple
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 14,),
                      Row(
                        children: <Widget>[
                          SizedBox(height: 14,),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.yellow,
                                style: BorderStyle.solid,
                                width: 2.5,

                              ),
                              image: DecorationImage(
                                image: AssetImage('images/p1.jpg')
                              )
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width-120,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: (){},
                              color: Colors.white,
                              iconSize: 40,
                            ),
                          ),
                          SizedBox(height: 15,)
                        ],
                      ),
                      SizedBox(height: 45,),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Hello Welcome',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Padding(
                        padding: EdgeInsets.only(left: 15,right: 15),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(25),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.amber,
                                size: 30,
                              ),
                              contentPadding: EdgeInsets.only(left: 20,top: 15,bottom: 10),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.blue
                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,)
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Stack(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Material(
                    elevation: 2,
                    child: Container(
                      height: 70,
                      color: Colors.lightGreenAccent),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 75,
                        width: MediaQuery.of(context).size.width/2,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 5,),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/shirt1.png')
                                )
                              ),
                            ),
                            Text(
                              'Shirts',
                              style: TextStyle(
                                fontFamily: 'Georgia'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        width: MediaQuery.of(context).size.width/2,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 5,),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/frock1.jpg')
                                )
                              ),
                            ),
                            Text(
                              'Frocks',
                              style: TextStyle(
                                fontFamily: 'Georgia',
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          hotDeal('new arrival frock', 'images/deal1.jpg', true),
          hotDeal('new arrival shoes', 'images/deal2.png', false)
        ],
      ),
    );
  }
}

Widget hotDeal(String title,String imagePath, bool isLoved){
  return Padding(
    padding: EdgeInsets.only(left: 15,top: 15,right: 15),
    child: Container(
      height: 140,
      width: double.infinity,
      color: Colors.orangeAccent,
      child: Row(
        children: <Widget>[
          Container(
            width: 140,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(width: 4,),
          Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 40,),
                  Material(
                    elevation: isLoved ? 0 : 2,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isLoved ? Colors.grey.withOpacity(0.3) : Colors.white
                      ),
                      child: Center(
                        child: isLoved ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5,),
              Container(
                width: 150,
                child: Text(
                  'This is a hot deal',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 13,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Row(
                children: <Widget>[
                  SizedBox(width: 35,),
                  Container(
                    width: 50,
                    height: 44,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        '\$100',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 44,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}