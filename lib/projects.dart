import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pbrandstetter/config/assets.dart';
import 'package:tweet_ui/models/api/tweet.dart';
import 'package:tweet_ui/tweet_ui.dart';
import 'package:intl/intl.dart';
import 'package:pbrandstetter/widgets/theme_inherited_widget.dart';
import 'package:http/http.dart' as http;

class ProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool darkMode = ThemeSwitcher.of(context).isDarkModeOn;
    const kHtml = """
      <blockquote class="twitter-tweet" data-dnt="true">
      <p lang="en" dir="ltr">The development continued and you can find the source code on GitHub <a href="https://t.co/2Vl1HGS1bF">https://t.co/2Vl1HGS1bF</a>
      </p>&mdash; Philipp (@phips_b) <a href="https://twitter.com/phips_b/status/1275096789536866304?ref_src=twsrc%5Etfw">June 22, 2020</a></blockquote>
      <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    """;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: getTweetWidgets(darkMode)
      ),
    );
  }

  Widget getTweetWidgets(bool darkMode) {
    var s;
    getTweets(darkMode).then((value) {
      s = value;
    });
    return s;
  }

  Future<Widget> getTweets(bool darkMode) async {
    var response = await http.get(
        "https://api.twitter.com/2/tweets?ids=1280845533024829440", headers: {"Authorization": "Bearer jHSr1jHNsZdUpDrwjwka7M8WD"});
    var jsonResponse;
    if (response.statusCode == 200) {
      jsonResponse = response.body.toString();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    jsonResponse = Assets.tweet;
    List<Widget> tweets = new List<Widget>();
    tweets.add(buildEmbeddedTweetView(jsonResponse, darkMode));

    return new Row(children: tweets);
  }

  /// Builds a header for a TweetView
  Widget buildHeader(String headerTitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        headerTitle,
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget buildEmbeddedTweetView(String jsonFile, bool darkMode) {
    return FutureBuilder(
      future: null,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (jsonFile.length > 0) {
          return Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: EmbeddedTweetView.fromTweet(
              Tweet.fromRawJson(
                jsonFile,
              ),
              backgroundColor: (darkMode) ? Colors.blueAccent : Colors.white,
              darkMode: darkMode,
              createdDateDisplayFormat: DateFormat("EEE, MMM d, ''yy"),
            ),
          );
        }
        if (snapshot.hasError) {
          return Container(
            child: Text(
              snapshot.error.toString(),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
