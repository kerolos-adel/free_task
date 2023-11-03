import 'package:flutter/material.dart';

tabsController(){
    return  PreferredSize(
      preferredSize: Size.fromHeight(0.0),
      child: Column(
        children: [
          TabBar(tabs: [
            Tab(child: tabs(text: "Users")),
            Tab(child: tabs(text: "Services")),
            Tab(child: tabs(text: "Orders(0)"))
          ])
        ],
      ),
    );
  }

tabs({required String text}) {
  return Container(
      height: 32,
      width: 128,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(360),
          color: const Color.fromRGBO(214, 17, 22, 1)),
      child: GestureDetector(
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white),
          ),
        ),
        onTap: () {},
      ));
}
