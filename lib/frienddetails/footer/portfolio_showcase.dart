import 'package:flutter/material.dart';

  class PortfolioShowcase extends StatelessWidget {

  Widget build(BuildContext context) {

  var textTheme = Theme.of(context).textTheme;

  return new Center(

      child: new Text(
        ' ',
      style: textTheme.title.copyWith(color: Colors.white),
        ),
      );
    }
  }

