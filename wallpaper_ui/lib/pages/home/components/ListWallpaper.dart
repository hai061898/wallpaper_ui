import 'package:flutter/material.dart';

class ListWallpaper extends StatelessWidget {
  const ListWallpaper(
      {Key? key,
      required this.column1,
      required this.column2,
      this.qtdWallpapers})
      : super(key: key);

  final List<Widget> column1, column2;
  final int? qtdWallpapers;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 35, 15, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wallpapers',
            style: TextStyle(
                color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold),
          ),
          Text(
            '${qtdWallpapers.toString()} wallpaper avaiable ',
            style: TextStyle(  
              color: Colors.white,
              fontSize: 14,
            ),
             
          ),
           SizedBox(height: 25),
           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Expanded(
                  child: Column(
                    children: column1
                  ),
                ),
                
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    children: column2
                  ),
                ),
             ],
           ),
        ],
      ),
    );
  }
}
