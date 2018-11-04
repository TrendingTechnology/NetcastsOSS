import 'package:flutter/material.dart';
import 'package:hear2learn/podcast/info.dart';
import 'package:hear2learn/podcast/episodes.dart';
import 'package:hear2learn/podcast/home.dart';

class Podcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Twice Removed'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.music_video),
                text: 'Podcast',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'Episodes',
              ),
              Tab(
                icon: Icon(Icons.info),
                text: 'Info',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: PodcastHome(),
              margin: EdgeInsets.all(16.0),
            ),
            Container(
              child: PodcastEpisodesList(),
              margin: EdgeInsets.all(16.0),
            ),
            Container(
              child: PodcastInfo(),
              margin: EdgeInsets.all(16.0),
            ),
          ],
        ),
      ),
      length: 3,
    );
  }
}

