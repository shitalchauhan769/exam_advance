import 'package:api_exem_advance/screen/home/provider/home_provider.dart';
import 'package:api_exem_advance/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Components /provider/network_provider.dart';
void main()
{
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: HomeProvider(),),
    ChangeNotifierProvider.value(value: NetworkProvider()..connectivity,),
  ],
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
    ),
  ),);
}