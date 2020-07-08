import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pbrandstetter/config/assets.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

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
              Material(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: Image.asset(Assets.portrait).image,
                ),
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
                    onPressed: () => _launchUrl(Constants.PROFILE_GITHUB),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.twitter),
                    ),
                    label: Text('Twitter'),
                    onPressed: () => _launchUrl(Constants.PROFILE_TWITTER),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.instagram),
                    ),
                    label: Text('Instagram'),
                    onPressed: () => _launchUrl(Constants.PROFILE_INSTAGRAM),
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

_launchUrl(String url) async {
  if (kIsWeb) {
    html.window.open(url, 'pbrandstetter');
  } else if (await canLaunch(Constants.PROFILE_TWITTER)) {
    launch(url);
  }
}
