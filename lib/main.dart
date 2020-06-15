
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customExtension.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodStore',style: TextStyle(color: Colors.black,fontFamily: 'Quicksand',letterSpacing: 1.6,fontWeight: FontWeight.bold),),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.black38,size: 32.0,),onPressed: (){},),
        ],
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: (){}),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height:230.0,
                              width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/4,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/img4.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                            ),
                            Positioned(
                                bottom: 0.0,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:80.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                    bottomLeft:Radius.circular(10.0) ,
                                    bottomRight: Radius.circular(10.0),
                                ),
                                    color: Colors.black26,
                                  ),
                            )),
                            Positioned(
                                top: 155.0,
                                left:20.0,
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text('Chocolate Cream',style: TextStyle(
                                        fontSize: 28.0,
                                        color: Colors.white,
                                        fontFamily: 'Quicksand'),
                                    ),
                                  ),
                                  Container(
                                    child: RichText(text: TextSpan(text: '\$88',style: TextStyle(fontSize: 20.0,fontFamily:'Quicksand'),
                                        children: <TextSpan>[
                                          TextSpan(text: ' 88',style: TextStyle(fontSize: 18.0,decoration: TextDecoration.lineThrough)),
                                    ]))
                                  ),
                                ],
                            ),),

                          ],
                        ),
                      ],
                    ),
                    //SizedBox(width:5.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 2.0,
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10.0,),
                                Icon(Icons.favorite,color: Colors.red,),
                                Text('386',style: TextStyle(fontFamily: 'Quicksand')),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height:5.0),
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 2.0,
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10.0,),
                                Icon(Icons.comment,color: Colors.grey,),
                                Text('186',style: TextStyle(fontFamily: 'Quicksand')),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height:5.0),
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 2.0,
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10.0,),
                                Icon(Icons.share,color: Colors.grey,),
                                Text('636',style: TextStyle(fontFamily: 'Quicksand'),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ).paddingFromLTRB(0.0, 0.0, 0.0, 20.0),
                  ],
                ),
              ).paddingAll(10.0),
              Padding(
                padding: EdgeInsets.only(left:16.0),
                child: Text('Commidity',style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,),
              ),
              SizedBox(height: 18.0,),
              GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: [
                  _buildFoodCard('Raspberry', 'Italy', 'assets/img1.jpg', 64, 22, 1),
                  _buildFoodCard('Mousse', 'China', 'assets/img2.jpg', 64, 22, 2),
                  _buildFoodCard('Raspberry', 'Italy', 'assets/img3.jpg', 64, 22, 3),
                  _buildFoodCard('Cupcake', 'Sweden', 'assets/img5.jpg', 64, 22, 4),
                  _buildFoodCard('Cupcake', 'Sweden', 'assets/img6.jpg', 64, 22, 5),
                  _buildFoodCard('Cupcake', 'Sweden', 'assets/img7.jpg', 64, 22, 6),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildFoodCard(
    String name, String origin, String cardImage, int likes, int commentCount, int cardIndex
    ) {
  return Padding(
    padding: cardIndex.isEven? EdgeInsets.only(right: 15.0): EdgeInsets.only(left: 15.0),
    child: Container(
      height: 400.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
              color: Colors.grey.withOpacity(0.2),
              style: BorderStyle.solid,
              width: 1.0
          )
      ),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 115.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)
                    ),
                    image: DecorationImage(
                        image: AssetImage(cardImage),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,top: 5.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  origin,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12.0,
                      color: Colors.grey
                  ),
                ),
              ),
              SizedBox(height: 3.0),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,top: 10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    SizedBox(width: 2.0),
                    Text(
                      likes.toString(),
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12.0,
                          color: Colors.grey
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Icon(
                      Icons.chat_bubble,
                      color: Colors.grey.withOpacity(0.4),

                    ),
                    SizedBox(width: 2.0),
                    Text(
                      commentCount.toString(),
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12.0,
                          color: Colors.grey
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 90.0,
            left: 130.0,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.amber,
              ),
              child: Center(
                child: Icon(Icons.shopping_cart,color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
