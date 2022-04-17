
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram/data/FeedModel.dart';

class InstaHeader extends StatelessWidget {
  final FeedModel _feed;

  InstaHeader(this._feed);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          child: Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                        _feed.feedHeader.user.thumb))),
          ),
        ),
        Expanded(
            child: Text(_feed.feedHeader.user.name,
                style:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w600))),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: null,
          color: Colors.black,
          iconSize: 20,
        )
      ],
    );
  }

}