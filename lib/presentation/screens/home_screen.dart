import 'package:flutter/material.dart';
import 'package:mhtechin_task/core/theme/app_pallete.dart';

class HomeScreen extends StatelessWidget {

  static route() => MaterialPageRoute(builder: (context) =>  HomeScreen());

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  const Padding(
        padding:  EdgeInsets.all(50.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Center(
              child:  Text('WELCOME TO MHTECHIN ',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: AppPallete.gradient2),),

            ),
          ],
        ),
      ),
    );
  }
}
