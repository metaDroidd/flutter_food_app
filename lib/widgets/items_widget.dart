// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.80,
      children: [
        for(int i=1; i<5; i++)
        Container(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF232227),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "singleItemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/$i.png",
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Cheese Burger",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                ),
              ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text( 
                    "Hot Burger",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60 ,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$55",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                    Icon(CupertinoIcons.cart_badge_plus,
                    size: 27,
                    color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}