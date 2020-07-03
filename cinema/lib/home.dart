import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF12100E),
              const Color(0xFF2B4162),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),

      child: Scaffold(backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text('KAHAANI BAAZ',style: TextStyle(fontWeight: FontWeight.w300),),centerTitle: true,backgroundColor: Colors.black,leading: Image.asset('assets/logo.jpeg'),),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Color(0xFF2B4162),height: 50,
            items: <Widget>[
              Icon(Icons.home, size: 30),
              Icon(Icons.movie, size: 30),
              Icon(Icons.music_note, size: 30),
            ],
            onTap: (index) {
              //Handle button tap
            },
          ),
        body: Column(children: <Widget>[



          Container(
            height: 40,width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white.withOpacity(0.15),),
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[SizedBox(width: 5,),
            Container(
                child: Icon(Icons.search,color: Colors.white,size: 23,)),
            Container(
                child: Text('Search',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),))
          ],),),

          Container(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(

                    colors: [ const Color(0xFFF4C430),const Color(0xFFB8C6DB)], // whitish to gray
                    tileMode: TileMode.repeated // repeats the gradient over the canvas
                  ),
            borderRadius: BorderRadius.circular(15)
          ),
            height: 205,width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                Container(alignment: Alignment.centerLeft,margin: EdgeInsets.only(left: 10),
                  child: Text("Trending:",style: TextStyle(fontSize:28,color: Colors.black,fontWeight: FontWeight.w300),),),
                Column(
                  children: <Widget>[

                    Container( height: 150,margin: EdgeInsets.only(bottom: 5,top: 20,left: 15,right: 15),

                        child: Card(color: Colors.white,elevation: 50,child: Image.network('https://s.studiobinder.com/wp-content/uploads/2017/12/Movie-Poster-Template-Dark-with-Image.jpg?x81279'),)),
                  Center(child: Container(margin: EdgeInsets.only(bottom: 5),
                      child: Text('Movie'))),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container( height: 150,margin: EdgeInsets.only(bottom: 5,top: 20,left: 15,right: 15),

                        child: Card(color: Colors.white,elevation: 50,child: Image.network('https://s.studiobinder.com/wp-content/uploads/2017/12/Movie-Poster-Template-Dark-with-Image.jpg?x81279'),)),
                    Center(child: Container(margin: EdgeInsets.only(bottom: 5),
                        child: Text('Movie'))),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container( height: 150,margin: EdgeInsets.only(bottom: 5,top: 20,left: 15,right: 15),

                        child: Card(color: Colors.white,elevation: 50,child: Image.network('https://s.studiobinder.com/wp-content/uploads/2017/12/Movie-Poster-Template-Dark-with-Image.jpg?x81279'),)),
                    Center(child: Container(margin: EdgeInsets.only(bottom: 5),
                        child: Text('Movie'))),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container( height: 150,margin: EdgeInsets.only(bottom: 5,top: 20,left: 15,right: 15),

                        child: Card(color: Colors.white,elevation: 50,child: Image.network('https://s.studiobinder.com/wp-content/uploads/2017/12/Movie-Poster-Template-Dark-with-Image.jpg?x81279'),)),
                    Center(child: Container(margin: EdgeInsets.only(bottom: 5),
                        child: Text('Movie'))),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container( height: 150,margin: EdgeInsets.only(bottom: 5,top: 20,left: 15,right: 15),

                        child: Card(color: Colors.white,elevation: 50,child: Image.network('https://s.studiobinder.com/wp-content/uploads/2017/12/Movie-Poster-Template-Dark-with-Image.jpg?x81279'),)),
                    Center(child: Container(margin: EdgeInsets.only(bottom: 5),
                        child: Text('Movie'))),
                  ],
                ),
              ],),
            )

          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(

                      colors: [ const Color(0xFFF5F7FA),const Color(0xFFB8C6DB)], // whitish to gray
                      tileMode: TileMode.repeated // repeats the gradient over the canvas
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
              height: 205,width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  Container(alignment: Alignment.centerLeft,margin: EdgeInsets.only(left: 15),
                    child: Text("New:",style: TextStyle(fontSize:28,color: Colors.black,fontWeight: FontWeight.w300),),),
                  Column(
                    children: <Widget>[

                      Container( height: 150,margin: EdgeInsets.only(bottom: 5,top: 20,left: 15,right: 15),

                          child: Card(color: Colors.white,elevation: 50,child: Image.network('https://s.studiobinder.com/wp-content/uploads/2017/12/Movie-Poster-Template-Dark-with-Image.jpg?x81279'),)),
                      Center(child: Container(margin: EdgeInsets.only(bottom: 5),
                          child: Text('Movie'))),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container( height: 150,margin: EdgeInsets.only(bottom: 5,top: 20,left: 15,right: 15),

                          child: Card(color: Colors.white,elevation: 50,child: Image.network('https://s.studiobinder.com/wp-content/uploads/2017/12/Movie-Poster-Template-Dark-with-Image.jpg?x81279'),)),
                      Center(child: Container(margin: EdgeInsets.only(bottom: 5),
                          child: Text('Movie'))),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container( height: 150,margin: EdgeInsets.only(bottom: 5,top: 20,left: 15,right: 15),

                          child: Card(color: Colors.white,elevation: 50,child: Image.network('https://s.studiobinder.com/wp-content/uploads/2017/12/Movie-Poster-Template-Dark-with-Image.jpg?x81279'),)),
                      Center(child: Container(margin: EdgeInsets.only(bottom: 5),
                          child: Text('Movie'))),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container( height: 150,margin: EdgeInsets.only(bottom: 5,top: 20,left: 15,right: 15),

                          child: Card(color: Colors.white,elevation: 50,child: Image.network('https://s.studiobinder.com/wp-content/uploads/2017/12/Movie-Poster-Template-Dark-with-Image.jpg?x81279'),)),
                      Center(child: Container(margin: EdgeInsets.only(bottom: 5),
                          child: Text('Movie'))),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container( height: 150,margin: EdgeInsets.only(bottom: 5,top: 20,left: 15,right: 15),

                          child: Card(color: Colors.white,elevation: 50,child: Image.network('https://s.studiobinder.com/wp-content/uploads/2017/12/Movie-Poster-Template-Dark-with-Image.jpg?x81279'),)),
                      Center(child: Container(margin: EdgeInsets.only(bottom: 5),
                          child: Text('Movie'))),
                    ],
                  ),
                ],),
              )

          )
        ],)
      ),
    );
  }
}
