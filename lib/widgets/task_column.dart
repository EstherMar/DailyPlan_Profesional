import 'package:flutter/material.dart';

class TaskColumn extends StatelessWidget {
  bool asistir;
  final IconData icon;
  final Color iconBackgroundColor;
  final String cliente1;
  final String subtitle1;
  final String cliente2;
  final String subtitle2;
  final String cliente3;
  final String subtitle3;
  final String cliente4;
  final String subtitle4;
  TaskColumn({
    this.icon,
    this.iconBackgroundColor,
    this.cliente1, this.subtitle1, this.cliente2, this.subtitle2, this.cliente3, this.subtitle3, this.cliente4, this.subtitle4, this.asistir,
  });

  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 20.0,
          backgroundColor: iconBackgroundColor,
          child: Icon(
            icon,
            size: 15.0,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,),
            Text(
              cliente1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  subtitle1,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
                SizedBox (width: 60,),
                Text ("Asistencia"),
                Checkbox(
                  value: asistir = false,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  onChanged: (value){asistir = true;},
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              cliente2,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  subtitle2,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
                SizedBox (width: 60,),
                Text ("Asistencia"),
                Checkbox(
                  value: asistir = false,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  onChanged: (value){asistir = true;},
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              cliente3,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  subtitle3,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
                SizedBox (width: 60,),
                Text ("Asistencia"),
                Checkbox(
                  value: asistir = false,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  onChanged: (value){asistir = true;},
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              cliente4,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  subtitle4,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
                SizedBox (width: 60,),
                Text ("Asistencia"),
                Checkbox(
                  value: asistir = false,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  onChanged: (value){asistir = true;},
                ),
              ],
            ),
            SizedBox(height: 20,),
          ],
        )
      ],
    );
  }
}
