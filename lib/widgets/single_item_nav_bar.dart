// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Total Price",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "\$100",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          InkWell(
            onTap: (() {}),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFEFB322),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
              ),
              child: Row(
                children: [
                  Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    CupertinoIcons.cart_fill,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}