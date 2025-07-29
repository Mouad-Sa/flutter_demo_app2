import 'package:flutter/material.dart';
import 'package:demo_app_2/pages/home.page.dart';
import 'package:demo_app_2/pages/counter.page.dart';
import 'package:demo_app_2/pages/contacts.page.dart';
import 'package:demo_app_2/pages/gallery.page.dart';
import 'package:demo_app_2/pages/meteo.page.dart';

class GlobalParameters {
  static final routes = {
    "/": (context) => HomePage(),
    "/counter": (context) => CounterPage(),
    "/contacts": (context) => ContactsPage(),
    "/gallery": (context) => GalleryPage(),
    "/meteo": (context) => MeteoPage(),
  };

  static final menus = [
    {"title": "Home", "route": "/", "icon": Icon(Icons.home)},
    {"title": "Counter", "route": "/counter", "icon": Icon(Icons.memory)},
    {"title": "Contacts", "route": "/contacts", "icon": Icon(Icons.contacts)},
    {"title": "Meteo", "route": "/meteo", "icon": Icon(Icons.cloud)},
    {"title": "Gallery", "route": "/gallery", "icon": Icon(Icons.image)},
  ];
}
