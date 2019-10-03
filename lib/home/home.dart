import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'images/corredor.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Opacity(
            opacity: 0.50,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 160),
                    height: 100,
                    width: 300,
                    child: Text(
                      '14° Rústica Contra violência infantil',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Center(child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset('images/logo.png',fit: BoxFit.cover,)
                  )),
                  SizedBox(height: 10,),
                  Center(
                    child: RaisedButton.icon(
                      elevation: 4,
                      color: Colors.blueAccent,
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                      onPressed: (){}, label: Text('Acessar', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
