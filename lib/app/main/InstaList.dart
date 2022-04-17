import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram/app/main/InstaBody.dart';
import 'package:instagram/app/main/InstaHeader.dart';
import 'package:instagram/data/FeedModel.dart';

import 'InstaFooter.dart';

class InstaList extends StatelessWidget {
  final _index;
  final _feedList = [
    FeedModel(
        FeedHeader(User(
            "d.e.e.p.z.o.n.e",
            "https://i.pinimg.com/originals/f2/ae/13/f2ae1376b2fd74ec68730a0cc19301f9.jpg",
            false)),
        FeedBody([
          "https://static.boredpanda"
              ".com/blog/wp-content/uploads/2017/02/IMG_20170114_222025_931-58a01296a1b60__880.jpg"
        ]),
        FeedFooter(
            true,
            100,
            Comment(
                User(
                    "d.e.e.p.z.o.n.e",
                    "https://i.pinimg.com/originals/f2/ae/13/f2ae1376b2fd74ec68730a0cc19301f9.jpg",
                    false),
                "Mỗi ngày đều đang chờ đợi, chỉ là không biết chờ đợi điều gì"
                    " nữa.."),
            100))
  ];

  InstaList(this._index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InstaHeader(_feedList[0]),
        InstaBody(_feedList[0]),
        InstaFooter(_feedList[0])
      ],
    );
  }
}
