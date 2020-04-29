import 'package:flutter/material.dart';
import 'package:pbrandstetter/config/assets.dart';
import 'dart:html' as html;

import 'config/constants.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.portrait).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Philipp Brandstetter',
                textScaleFactor: 4,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Java. C#. Angular. Flutter.\nMusic. And Singing.',
                style: Theme.of(context).textTheme.caption,
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.github),
                    ),
                    label: Text('Github'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'pbrandstetter'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.twitter),
                    ),
                    label: Text('Twitter'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_TWITTER, 'pbrandstetter'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.instagram),
                    ),
                    label: Text('Instagram'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'pbrandstetter'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
