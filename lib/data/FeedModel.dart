
// Feed model
class FeedModel {
  final FeedHeader _feedHeader;
  final FeedBody _feedBody;
  final FeedFooter _feedFooter;

  FeedModel(this._feedHeader, this._feedBody, this._feedFooter);

  FeedFooter get feedFooter => _feedFooter;

  FeedBody get feedBody => _feedBody;

  FeedHeader get feedHeader => _feedHeader;
}

class User {
  final String _thumb;
  final String _name;
  final bool _isAd;

  User(this._name, this._thumb, this._isAd);

  bool get isAd => _isAd;

  String get name => _name;

  String get thumb => _thumb;
}

class FeedHeader {
  final User _user;

  FeedHeader(this._user);

  User get user => _user;
}

class FeedBody {
  final List<String> _thumbList;

  FeedBody(this._thumbList);

  List<String> get thumbList => _thumbList;
}

class FeedFooter {
  final bool _isLike;
  final int _likes;
  final Comment _mainComment;
  final int _comments;

  FeedFooter(this._isLike, this._likes, this._mainComment, this._comments);

  int get comments => _comments;

  Comment get mainComment => _mainComment;

  int get likes => _likes;

  bool get isLike => _isLike;
}

class Comment {
  final User _user;
  final String comment;

  Comment(this._user, this.comment);

  User get user => _user;
}
