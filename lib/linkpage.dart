// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Link extends StatelessWidget {
  const Link({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Center(
        child: Column (
          
               
          children: [
  SizedBox(
    height: 600,
  ),
           MaterialButton(
                  
                    minWidth: double.maxFinite,
                    shape: StadiumBorder(),
                    
                    color:Colors.orange,
                    onPressed: () {
                 
                   launchUrlString('https://fikfap.com/');
                     },
                    child: Text(
                      "First",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
          MaterialButton(
                       color:Colors.orange,
                    minWidth: double.maxFinite,
                    shape: StadiumBorder(),
                    onPressed: () {
                 
                   launchUrlString('https://www.redgifs.com/');
                     },
                    child: Text(
                      "Second",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                    MaterialButton(
                    color:Colors.orange,
                    minWidth: double.maxFinite,
                    shape: StadiumBorder(),
                    onPressed: () {
                 
                   launchUrlString('https://www.xfree.com/');
                     },
                    child: Text(
                      "Third",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                   MaterialButton(
                     color:Colors.orange,
                    minWidth: double.maxFinite,
                    shape: StadiumBorder(),
                    onPressed: () {
                 
                   launchUrlString('https://www.google.com/');
                     },
                    child: Text(
                      "Fourth",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
        ]),
      ),
    );
  }
}