import 'package:flutter/material.dart';

class ItemButton extends StatelessWidget {
  const ItemButton(
      {Key? key,
      this.text = 'Download',
      this.icon = Icons.download_sharp,
      this.bgColor = Colors.grey,
      required this.press
      }
      ): super(key: key);
  final IconData icon;
  final String text;
  final Color bgColor;
  final GestureTapCallback press;
   
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column( 
        children: [
          Container(
             margin: EdgeInsets.only(bottom: 5),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor
            ),
            child: Icon(icon, size: 30, color: Colors.grey[300],),
          ),
           Text(text, style: TextStyle(color: Colors.white),),

        ],
      ),
    );
  }
}
