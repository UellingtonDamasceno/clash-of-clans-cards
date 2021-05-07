import 'dart:ui';

import 'package:clash_of_clans_troops/models/troop.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final Troop _troop;
  final bool _isActive;

  MyCard(this._troop, this._isActive);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.elasticOut,
      duration: Duration(milliseconds: 2000),
      margin: EdgeInsets.only(
        top: widget._isActive ? 100 : 150,
        right: 20,
        bottom: widget._isActive ? 110 : 60,
      ),
      decoration: _getCardDecoration(),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Column(
              children: [
                _buildTroopImageBase(),
                _buildDescription(),
                _buildInfo(),
              ],
            ),
          ),
          _buildTroopImage()
        ],
      ),
    );
  }

  _getCardDecoration() {
    double offset = widget._isActive ? 10 : 0;
    return BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(offset, offset),
          blurRadius: 8,
        ),
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.topRight,
        colors: [
          Colors.brown,
          Colors.brown.shade200,
        ],
      ),
    );
  }

  _buildTroopImage() {
    String troopName = widget._troop.name;
    return Positioned(
      top: -30,
      child: Image.asset(
        'assets/images/$troopName.webp',
        height: 300,
      ),
    );
  }

  _buildTroopImageBase() {
    return Container(height: 250);
  }

  _buildDescription() {
    String name = widget._troop.name.toString().replaceAll("_", " ");

    return Container(
      height: 290,
      // color: Colors.black38,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget._troop.setIsFavorite();
                    });
                  },
                  child: Icon(
                    widget._troop.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border_rounded,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Colors.white70,
          ),
          Container(
              child: Text(
            widget._troop.description,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ))
        ],
      ),
    );
  }

  _buildInfo() {
    var speed = widget._troop.speed;
    var cost = widget._troop.cost;
    var trainning = widget._troop.trainning;

    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _buildCardInfo("SPEED", speed),
        _buildCardInfo("COST", cost),
        _buildCardInfo("TRAINNING", trainning),
      ]),
    );
  }

  _buildCardInfo(String property, int value) {
    return Container(
        height: 75,
        width: (350 / 3) - 20,
        alignment: Alignment.center,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                property,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Gilroy',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$value',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Gilroy',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
  }
}
