import 'package:flutter/material.dart';
import 'package:wallpaper_ui/pages/home/components/ListWallpaper.dart';
import 'package:wallpaper_ui/widgets/bottom_menu.dart';

import 'components/body.dart';
import 'components/main_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> column1 = [];
  List<Widget> column2 = [];

  final int qtdWallpapers = 6;

  void populateColumns() {
    for (int i = 1; i <= qtdWallpapers; i++) {
      if (i.isEven)
        column1.add(MainCard(image: 'assets/wall_${i.toString()}.jpg'));
      else
        column2.add(MainCard(image: 'assets/wall_${i.toString()}.jpg'));
    }
  }

  @override
  void initState() {
    populateColumns();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        child: SafeArea(
          child: Column(
            children: [
              // LIST OF WALLPAPERS
              Expanded(
                  child: ListWallpaper(
                column1: column1,
                column2: column2,
                qtdWallpapers: qtdWallpapers,
              )),

              BottomMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
