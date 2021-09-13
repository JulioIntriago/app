import 'dart:ui';

import 'package:app/src/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://cdn.shopify.com/s/files/1/0899/2262/articles/Restaurantes_Comida_Internacional.JPG?v=1555022012'))),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: Text('DELIVERY FAST FOOD TO YOUR DOOR',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text('Set exact to find the rigth restaurants near you.',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0)),
            ),

            //BUTTTON DE REGISTRO O LOG IN
            Container(
              width: 300.0,
              height: 45.0,
              margin: EdgeInsets.only(top: 40.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.yellow[600],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),

            // BUTTON LOGIN CON FACEBOOK
            Container(
                width: 300.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: ElevatedButton.icon(
                  icon: Icon(Icons.facebook),
                  label: Text(
                    "Connect with Facebook",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.lightBlue[600],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60.0)),
                  ),
                  onPressed: () {},
                )),
          ],
        )
      ],
    ));
  }
}
