import 'package:dm1/screens/ratgeber/mein_ratgeber.dart';
import 'package:dm1/screens/reisehilfe/reisehilfe.dart';
import 'package:dm1/widgets/g_app_bar.dart';
import 'package:dm1/widgets/slider_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int index = 0;
  List<Widget> widgets = [
    const MeinRatgeber(),
    const Reisehilfe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppBar.basicBar,
      // For fun a specially programmed bottomNavigationBar
      bottomNavigationBar: SliderNavigationBar(
        index: (newIndex) {
          setState(() {
            index = newIndex;
          });
        },
      ),
      body: widgets[index],
    );
  }
}
