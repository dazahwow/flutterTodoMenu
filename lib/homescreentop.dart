import 'package:flutter/material.dart';
import 'package:todo_menu/assignment_task_widget.dart';
import 'package:todo_menu/work_task_widget%20copy.dart';

import 'life_task_widget.dart';

class HomeScreenTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Mclipper(),
            child: Container(
              height: 275.0,
              decoration: BoxDecoration(
                color: Colors.tealAccent[400],
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.tealAccent[200],
                    Colors.tealAccent[400],
                    Colors.lightBlue[200],
                    Colors.lightBlue[400],
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Good Morning,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'You have 5 tasks for today.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 120,
              left: 10.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'PROJECT',
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        '15',
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white.withOpacity(0.9)),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Life_task_widget(),
                        SizedBox(
                          height: 100,
                          width: 10,
                        ),
                        Work_task_widget(),
                        SizedBox(
                          height: 100,
                          width: 10,
                        ),
                        Assignment_task_widget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Mclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, 370.0 - 200.0);

    var controlPoint = Offset(35.0, size.height);
    var endPoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(size.width / 2, 300, size.width, 370.0 - 200.0);
    path.lineTo(size.width, 0.0);
    path.close();

    // var path = new Path();
    // path.lineTo(0.0, 390.0 - 200);
    // path.quadraticBezierTo(size.width, 280, size.width, 390.0-200);
    // path.lineTo(size.width, 0.0);
    // path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
