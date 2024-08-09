
import 'package:api_exem_advance/screen/deital/view/deital_screen.dart';
import 'package:api_exem_advance/screen/home/view/home_screen.dart';
import 'package:api_exem_advance/screen/spleh/view/spleh_scree.dart';
import 'package:flutter/cupertino.dart';

Map<String,WidgetBuilder>app_routes={
  "/":(c1)=>const SplehScree(),
  "/home":(c1)=>const HomeScreen(),
  "/detail":(c1)=>const DeitalScreen (),
};