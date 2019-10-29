import 'package:flutter/material.dart';

class Assignment_task_widget extends StatelessWidget {
  const Assignment_task_widget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0.0, top: 30.0, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.assignment,
                    color: Colors.orangeAccent,
                    size: 50.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'Assignments',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '7 tasks',
                            style: TextStyle(
                              color: Colors.black12,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      width: 170,
      height: 170.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(
              0.0,
              2.0,
            ),
            blurRadius: 10.0,
          ),
        ],
      ),
    );
  }
}
