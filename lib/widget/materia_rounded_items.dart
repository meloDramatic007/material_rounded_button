
import 'package:flutter/material.dart';


class MaterialRoundedButton extends StatelessWidget {
  final String title;
  final double fontSize;
  final Icon ? icon;
  final double elevation;
  final Color ? backgroundColor;
  final double radius;
  final void Function() ? onPress;

  const MaterialRoundedButton({
    required this.title,
    this.fontSize=16,
    this.icon,
    this.elevation=0.0,
    this.backgroundColor,
    this.radius=50.0,
    this.onPress,
    Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;


    return InkWell(
      onTap: (){

          onPress!();

      },
      child: Material(
          elevation: elevation,
          shape: const CircleBorder(),
          child: CircleAvatar(
            radius: radius,
            backgroundColor: backgroundColor,
            child: Container(
              margin: EdgeInsets.all(height<=533.34 ? 5 : 10),
              child: icon==null?Center(
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(title,style:  TextStyle(fontSize:fontSize ))),
              ):Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? Container(),//Icons.pie_chart,size: 50,
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(title,style:  TextStyle(fontSize:fontSize )))
                ],
              ),
            ),

          ),
      ),
    );
  }
}
