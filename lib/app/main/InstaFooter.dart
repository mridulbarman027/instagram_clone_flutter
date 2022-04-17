import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/data/FeedModel.dart';

class InstaFooter extends StatelessWidget {
  final FeedModel _feed;

  InstaFooter(this._feed);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Icon(FontAwesomeIcons.heart, size: 20),
                SizedBox(
                  width: 12,
                ),
                Icon(FontAwesomeIcons.comment, size: 20),
                SizedBox(
                  width: 12,
                ),
                Icon(FontAwesomeIcons.paperPlane, size: 20),
              ],
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(_feed.feedFooter.likes.toString() + " likes",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Padding(padding: EdgeInsets.only(top: 2)),
            RichText(
                text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                  TextSpan(
                      text: _feed.feedFooter.mainComment.user.name,
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  TextSpan(text: " " + _feed.feedFooter.mainComment.comment)
                ])),
            Padding(padding: EdgeInsets.only(top: 2)),
            Align(
              alignment: Alignment.topLeft,
              child: Text("View all " +
                  _feed.feedFooter.comments.toString() +
                  " comments"),
            ),
            Padding(padding: EdgeInsets.only(top: 2)),
            Align(
                alignment: Alignment.topLeft,
                child: Text("17 hours ago . " + "See translation",
                    style: TextStyle(fontSize: 12)))
          ],
        ));
  }
}
