import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math'as math;

import '../home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {

    return Container(decoration: BoxDecoration(
      gradient: new LinearGradient(
          colors: [
            const Color(0xFF414141),
            const Color(0xFF000000),
          ],
          begin: const FractionalOffset(6.0, 2.0),
          end: const FractionalOffset(.21, 4.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
    ),
      child: Scaffold(backgroundColor: Colors.transparent,
        body:Container(margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              Stack(
                children: <Widget>[

                  Container(margin: EdgeInsets.only(bottom: 30),
                    child: Transform.rotate(angle:340 * math.pi / 180,
                      child: FaIcon(FontAwesomeIcons.ticketAlt,size: 150,color: Colors.grey,)), ),
                  Container(margin: EdgeInsets.only(bottom: 30),
                    child: Transform.rotate(angle:337 * math.pi / 180,
                        child: Text("Cinema",style: TextStyle(color: Colors.white,fontSize: 40))), ),

                ],
              ),
          Container(padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black,),
            child: TextFormField(
              decoration: new InputDecoration(icon: Icon(Icons.account_circle,color: Colors.white),
                labelText: "Enter Email", focusedBorder: InputBorder.none,
                labelStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white,

                //fillColor: Colors.green
              ),
              validator: (val) {
                if(val.length==0) {
                  return "Email cannot be empty";
                }else{
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                fontFamily: "Poppins"
              ),
            ),),
          SizedBox(height: 10,),
          Container(padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black,),
            child: TextFormField(
              decoration: new InputDecoration(icon: Icon(Icons.lock,color: Colors.white,),
                labelText: "Enter Password", focusedBorder: InputBorder.none,
                fillColor: Colors.white,
                labelStyle: TextStyle(color: Colors.white),

                //fillColor: Colors.green
              ),
              validator: (val) {
                if(val.length==0) {
                  return "Email cannot be empty";
                }else{
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                fontFamily: "Poppins",
              ),
            ),),
              InkWell(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
                child: Container(margin:EdgeInsets.only(top: 15),height: 42,width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black,),child: Container(alignment: Alignment.center,

                    child: Text('SignIn',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),),
                ),
              )
      ],),
        ),),
    );
  }
}
