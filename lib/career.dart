import 'package:flutter/material.dart';

class CareerTab extends StatelessWidget {
  const CareerTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = 12.0;
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Table(
            columnWidths: {
              0: FractionColumnWidth(.35),
            },
            border: TableBorder.symmetric(
                inside:
                    BorderSide(color: Theme.of(context).dividerColor, width: 1),
                outside: BorderSide.none),
            children: [
              TableRow(children: [
                Center(
                  heightFactor: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lightbulb_outline,
                        size: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Skills',
                        textScaleFactor: 2,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Speaking fluent German and English',
                          ),
                          TextSpan(text: '\n\n'),
                          TextSpan(
                            text: 'Java, C, C#',
                          ),
                          TextSpan(text: '\n\n'),
                          TextSpan(
                            text: 'HTML, JavaScript, CSS, Flutter',
                          ),
                          TextSpan(text: '\n\n'),
                          TextSpan(
                            text: 'Databases (MySQL, SQLite, Oracle, ...)',
                          ),
                          TextSpan(text: '\n\n'),
                          TextSpan(
                            text: 'Project Development',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(top: 5), // make that to center
                  child: Center(
                    heightFactor: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.school,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Education',
                          textScaleFactor: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '2007 - 2015: ',
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    'Primary and Secondary School in Wallsee\n\n',
                              ),
                            ],
                          ),
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '2015 - 2020: ',
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    'Higher Technical College for IT in Perg\n\n',
                              ),
                            ],
                          ),
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '2020 - 2021: ',
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Parademics at Austrian Red Cross',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Center(
                  heightFactor: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_florist,
                        size: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Leisure',
                        textScaleFactor: 2,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Building OpenSource Apps\n\n',
                          ),
                          TextSpan(
                            text: 'Programming with Friends\n\n',
                          ),
                          TextSpan(
                            text: 'Playing Recorder and Piano\n\n',
                          ),
                          TextSpan(
                            text: 'Driving around with my Vespa\n\n',
                          ),
                          TextSpan(
                            text: 'Reading Newspapers',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
