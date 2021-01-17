import 'package:flutter/material.dart';
import 'package:flutterplayandroid/route/MainRoute.dart';
import 'package:flutterplayandroid/route/SplashRoute.dart';

void main() => runApp(MaterialApp(
    routes: {"/MainRoute": (context) => MainRoute()}, home: SplashRoute()));
