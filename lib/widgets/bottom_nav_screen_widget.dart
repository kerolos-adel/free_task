import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavItems =  <BottomNavigationBarItem>[
  const BottomNavigationBarItem(
    icon: Icon(Icons.home_filled),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Image.asset("assets/images/dashboard_customize.png"),
    label: 'Assets',
  ),
  const BottomNavigationBarItem(
    icon: Icon(
      Icons.support_agent,
    ),
    label: 'Support',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profile',
  ),
];