import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.movie,
            text: 'Movies',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.router,
            text: 'Route',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.map_sharp,
            text: 'Map',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.photo_camera_sharp,
            text: 'Camera',
          )
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundColor: color,
        child: Icon(
          icon,
          size: 35,
        ),
        radius: 30,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(color: color, fontSize: 18),
      )
    ]);
    return _CardBackground(
      child: column,
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
