import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_icons/flutter_icons.dart';
import 'package:share_your_park/screens/views/validate.dart';

class Car extends StatefulWidget {
  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: size.height * 1/3,
                   decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                         colors: [
                      Color(0xFFFF008D),
                      Color(0xFFFF6EBE),
                    ])
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          //color: Colors.amber,
                          //margin:  EdgeInsets.only(left:25, top: 15),
                          child: Align(
                            child: Image.asset('assets/images/car.png',
                             //height: 300, width: 280,
                             height: screenHeight * 0.5,
                             width: screenWidth * 0.75,
                             alignment: Alignment(0, 1),)
                          ),
                        ),
                      ]
                    ),
                    
                  ),
              ),
              Container( height: screenHeight * 0.02,color: Color(0xFFA3005A),),
              SizedBox(height: screenHeight * 0.04,),
              
              Column(
                children: [

                  //taille de voiture
                  Align(
                    alignment: Alignment(-0.7, 0),
                    //color: Colors.orange,
                    child: Text(
                     "Type de véhicule",
                      style: TextStyle(color: Color(0xFFFF008D), fontFamily: 'Arial', fontSize: 16, ),
                      textAlign: TextAlign.left,
                      ),
                  ),
                  Container(
                     height: 70,
                     child: Align(
                       child: Row(
                         children: [
                           Container(

                           ),
                         ],
                         )
                     ),
                  ),
                 /* Container(
                    height: 70,
                    child: Align(
                      child: Row(
                        children: [
                          
                          Container(
                            margin: EdgeInsets.only(left:50),
                            height: 45,
                            child: FloatingActionButton(
                              onPressed: () {  }, 
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              backgroundColor: Colors.white,
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Image.asset('assets/images/taxijaune.png', alignment: Alignment.center,),
                                  Text('Electrique', style: TextStyle(color: Colors.black, fontSize: 8),)
                                ]
                              ),
                                ),
                          ),
                          
                              Container(
                                margin: EdgeInsets.only(left:10),
                                height: 45,
                                child: FloatingActionButton(
                                onPressed: () {  },
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                backgroundColor: Colors.white,
                                child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Image.asset('assets/icons/taxigris.png', alignment: Alignment.center,),
                                  Text('Thermique', style: TextStyle(color: Colors.black, fontSize: 8),)
                                ]
                              ),
                                ),
                              ),
                          
                        ]
                      ),
                    ),
                  ),*/
                  Container(height: 2, color: Color(0xFFFF008D), width: 290, margin: EdgeInsets.only(bottom:10), ),
       //taille de voiture
                Align(
                    alignment: Alignment(-0.7, 0),
                    //color: Colors.orange,
                    child: Text(
                     "Taille de voiture",
                      style: TextStyle(color: Color(0xFFFF008D), fontFamily: 'Arial', fontSize: 16, ),
                      textAlign: TextAlign.left,
                      ),
                  ),
                  /*Container(
                    height: 70,
                    //color: Colors.lime,
                    child: Align(
                      child: Row(
                        children: [
                          
                          Container(
                            margin: EdgeInsets.only(left:50),
                            height: 45, width: 45,
                            child: FloatingActionButton(
                              onPressed: () {  }, 
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              backgroundColor: Colors.white,
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Image.asset('assets/images/taxijaune.png', alignment: Alignment.center,),
                                  Text('Small', style: TextStyle(color: Colors.black, fontSize: 8),)
                                ]
                              ),
                                ),
                          ),
                          
                              Container(
                                margin: EdgeInsets.only(left:10),
                                height: 45, width: 45,
                                child: FloatingActionButton(
                                onPressed: () {  },
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                backgroundColor: Colors.white,
                                 child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Image.asset('assets/icons/taxigris.png', alignment: Alignment.center,),
                                  Text('Medium', style: TextStyle(color: Colors.black, fontSize: 8),)
                                ]
                              ),
                                ),
                              ),

                              Container(
                            margin: EdgeInsets.only(left:10),
                            height: 45, width: 45,
                            child: FloatingActionButton(
                              onPressed: () {  }, 
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              backgroundColor: Colors.white,
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Image.asset('assets/icons/taxirouge.png', alignment: Alignment.center,),
                                  Text('Large', style: TextStyle(color: Colors.black, fontSize: 8),)
                                ]
                              ),
                                ),
                          ),

                         ]
                      ),
                    ),
                  ),*/
                  Container(height: 2, color: Color(0xFFFF008D), width: 290, margin: EdgeInsets.only(bottom:10), ),
                  //bouton inscription
                          Container(
                            margin: EdgeInsets.only(top:10),
                        width: 240, height: 40,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                          color: Color(0xFFFF008D),
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Validate())
                                );
                          }, 
                          child: Text(
                            "S'inscrire",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Quicksand'
                            ),
                          
                          )
                          ),
                      ),
                        
                 

                  
                ],
              ),
              ],
              
          ),
        ),
      ),
      ),
    );
  }
}