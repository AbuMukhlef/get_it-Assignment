import 'package:get_it_assignment/model/tweet_model.dart';
import 'package:get_storage/get_storage.dart';

class TweetData {
  late List<TweetModel> tweets = [];
  final box = GetStorage();

  TweetData() {
    loadTweets();
  }

  addTweet(TweetModel value) {
    tweets.add(value);
    box.write("tweets", tweets);
  }

  removeTweet(int id) {
    tweets.removeWhere((tweet) => tweet.id == id);
  }

  loadTweets() {
    if (box.hasData("tweets")) {
      for (var tweet in box.read("tweets")) {
        tweets.add(TweetModel.fromJson(tweet));
      }
    }
  }
}
