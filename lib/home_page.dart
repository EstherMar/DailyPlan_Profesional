import 'package:flutter/material.dart';
import 'package:dailyplan/calendar_page.dart';
import 'package:dailyplan/widgets/task_column.dart';
import 'package:dailyplan/widgets/top_container.dart';

import 'SolicitudHoraria.dart';
import 'friends_list_page.dart';

class Principal extends StatelessWidget {
  Text subheading(String title) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2),
    );
  }

  static CircleAvatar ClientesIcon() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.green,
      child: Icon(
        Icons.people,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }

  static CircleAvatar SolicitudesIcon() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.deepOrange,
      child: Icon(
        Icons.announcement,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }


  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    bool asistir = true;
    return Scaffold(
        backgroundColor: Color.fromRGBO(69, 100, 120, .8),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.grey[350],
                Colors.grey[400],
                Colors.grey[500],
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                TopContainer(
                  height: 200,
                  width: width,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.menu,
                                color: Colors.black, size: 30.0),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      return AlertDialog(
                                          title: Text("Tú código de establecimiento es:",
                                            textAlign: TextAlign.center,),
                                          content: TextFormField(
                                            textAlign: TextAlign.center,
                                            decoration: const InputDecoration(
                                              hintText: '78VX16-BZ123',
                                            enabled: false),)
                                      );
                                    }
                                );
                              },
                              child: Icon(Icons.confirmation_number,
                                color: Colors.black, size: 40.0),
                            ),
                          ],
                        ),
                      ]),
                ),
                Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                          children: <Widget>[
                            Container(
                              color: Colors.transparent,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: <Widget>[
                                      subheading('Mis clientes de hoy'),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Clientes()),
                                          );
                                        },
                                        child: ClientesIcon(),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SolicitudHoraria()),
                                          );
                                        },
                                        child: SolicitudesIcon(),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15.0),
                                  Row(
                                    children: <Widget>[
                                      TaskColumn(
                                        icon: Icons.alarm,
                                        iconBackgroundColor: Colors.green,
                                        cliente1: '9:00 / 9:30 : Corte hombre',
                                        subtitle1: 'Agustín Casado',
                                        cliente2: '9:00 / 10:00 : Manicura y pedicura',
                                        subtitle2: 'Maripuri Garcia',
                                        cliente3: '9:30 / 10:00: Moldeado Corto',
                                        subtitle3: 'Encarnación Gonzalez',
                                        cliente4: '9:00 / 9:45: Corte mujer',
                                        subtitle4: 'Carolina Gutierrez',
                                      ),
                                    ],
                                  ),
                                  Text ("----------------------------------------------------------------"),
                                  Row(
                                    children: <Widget>[
                                      TaskColumn(
                                        icon: Icons.alarm,
                                        iconBackgroundColor: Colors.green,
                                        cliente1: '10:00 / 10:45 : Mechas media melena',
                                        subtitle1: 'Marta Suarez',
                                        cliente2: '10:00 / 10:30 : Mechas pelo corto',
                                        subtitle2: 'Maria Antonia Pelado',
                                        cliente3: '10:00 / 11:00: Color pelo largo',
                                        subtitle3: 'Herminia Platino',
                                        cliente4: '10:00 / 10:30: Corte hombre',
                                        subtitle4: 'Prudencio Cortés',
                                      ),
                                    ],
                                  ),
                                ],
                                ),
                                ),
                                ],
                              ),
                            ),
                            )
                          ]
                      ),
                    )
                )
    );
  }
}

