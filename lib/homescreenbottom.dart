import 'package:flutter/material.dart';

class HomeScreenBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 30.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'TODAY',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '03/',
                      style: TextStyle(fontSize: 15.0, color: Colors.black12),
                    ),
                    Text(
                      '07',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            height: 10,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          AnimatedContainer(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                  colors: [
                                    Colors.tealAccent[200],
                                    Colors.tealAccent[400],
                                    Colors.lightBlue[200],
                                    Colors.lightBlue[400],
                                  ],
                                  stops: [0.1, 0.2, 0.8, 0.9],
                                ),
                                borderRadius: BorderRadius.circular(10.0)),
                            height: 10,
                            width: (30 / 70) * constraints.maxWidth,
                            duration: Duration(milliseconds: 300),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.trip_origin,
                          size: 36.0,
                          color: Colors.tealAccent[200],
                        
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Eat breakfast with Xigle',
                                style: TextStyle(fontSize: 16.0, ),
                              ),
                              Text(
                                'Milk, vegetable salad, pizza',
                                style: TextStyle(
                                    color: Colors.black12.withOpacity(0.4)),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '07:00-07:30',
                          style: TextStyle(
                            color: Colors.black12.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.trip_origin,
                          size: 36.0,
                          color: Colors.yellowAccent,
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Read "Pride and Prejudice"',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Text(
                                'Read the second article',
                                style: TextStyle(
                                    color: Colors.black12.withOpacity(0.4)),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '07:40-10:30',
                          style: TextStyle(
                            color: Colors.black12.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      
                      children: <Widget>[
                        
                        Icon(
                          Icons.trip_origin,
                          size: 36.0,
                          color: Colors.cyanAccent,
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Convene a business meeting',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Text(
                                'Set the next quarter target',
                                style: TextStyle(
                                    color: Colors.black12.withOpacity(0.4)),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '10:30-12:00',
                          style: TextStyle(
                            color: Colors.black12.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.trip_origin,
                          size: 36.0,
                          color: Colors.pink[400],
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Read "Pride and Prejudice"',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Text(
                                'Read the second article',
                                style: TextStyle(
                                    color: Colors.black12.withOpacity(0.4)),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '07:40-10:30',
                          style: TextStyle(
                            color: Colors.black12.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 30,),
                    
                      Opacity(opacity: 0.2,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.radio_button_checked,
                            size: 36.0,
                            color: Colors.cyanAccent,
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Complete project plan',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  '14 pages and pop ups',
                                  style: TextStyle(
                                      color: Colors.black12.withOpacity(0.4)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '05:00-07:00',
                            style: TextStyle(
                              color: Colors.black12.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
