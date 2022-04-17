import 'package:flutter/material.dart';

import 'InstaList.dart';
import 'InstaStories.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        centerTitle: true,
        title: SizedBox(
          height: 35,
          child: Image.asset("assets/images/insta_logo.png"),
        ),
        leading: Icon(Icons.camera_alt),
        actions: [
          Padding(padding: EdgeInsets.only(right: 16), child: Icon(Icons.send))
        ],
      ),
      body: _InstaBody(),
      bottomNavigationBar: _InstaFooter(),
    );
  }
}

class _InstaFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(icon: Icon(Icons.home), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.add_box), onPressed: () {}),
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          IconButton(icon: Icon(Icons.account_box), onPressed: () {}),
        ],
      ),
    );
  }
}

class _InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return new Container(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => index == 0
              ? Container(
                  height: 76,
                  child: InstaStories(),
                )
              : InstaList(index)),
    );
  }
}
