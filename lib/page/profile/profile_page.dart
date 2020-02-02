import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:my_flutter_curriculum/data.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Some info about me!'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              SizedBox(height: 12),
              Hero(
                tag: 'ME',
                child: GFAvatar(
                  size: 120,
                  backgroundImage: AssetImage('assets/me.jpeg'),
                ),
              ),
              SizedBox(height: 12),
              Text(
                profileInfo['name'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 14),
              Text(
                profileInfo['bio'],
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
