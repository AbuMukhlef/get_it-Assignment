import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_assignment/core/all_file.dart';
import 'package:get_it_assignment/model/tweet_model.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final TextEditingController myController = TextEditingController();
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const FaIcon(
          FontAwesomeIcons.twitter,
          color: Colors.blue,
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          const SizedBox(height: 300),
          MyTextField(controller: myController),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                locator.get<TweetData>().addTweet(
                      TweetModel(
                        id: Random().nextInt(100),
                        tweet: myController.text,
                      ),
                    );
                // locator.get<TweetData>().box.erase();
                name = locator.get<TweetData>().box.read("tweets").toString();
                setState(() {});
              },
              child:
                  const Text('Tweet', style: TextStyle(color: Colors.white))),
          Text(name),
        ],
      ),
    );
  }
}
