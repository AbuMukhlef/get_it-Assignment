import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_assignment/screen/second_screen.dart';
import '../core/all_file.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const FaIcon(
          FontAwesomeIcons.twitter,
          color: Colors.blue,
        ),
      ),
      body: Column(
        children:
            locator.get<TweetData>().tweets.map((e) => Text(e.tweet)).toList(),
      ),
      floatingActionButton: Flexible(
        child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push((MaterialPageRoute(builder: (context) {
                return const SecondScreen();
              })));
            },
            shape: const OvalBorder(),
            backgroundColor: Colors.blue,
            child: const Image(image: AssetImage('assets/t2.png'))),
      ),
    );
  }
}
