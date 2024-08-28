import 'package:flutter/material.dart';
import '../core/all_file.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FaIcon(
          FontAwesomeIcons.twitter,
          color: Colors.blue,
        ),
      ),
      body: const Column(
        children: [
          Divider(),
          SizedBox(height: 300),
          MyTextField(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const OvalBorder(),
          backgroundColor: Colors.blue,
          child: const Image(image: AssetImage('assets/t2.png'))),
    );
  }
}
