import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram/data/FeedModel.dart';

class InstaBody extends StatelessWidget {
  final FeedModel _feed;

  InstaBody(this._feed);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: CachedNetworkImage(
        imageUrl: _feed.feedBody.thumbList[0],
        fit: BoxFit.cover
      ),
    );
  }
}
