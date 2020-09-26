import 'package:flutter/material.dart';
import 'package:gdg_dev_fest/view/home/home.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
      },
    ));
