import 'package:flutter/material.dart';

import 'components/home_page/topic_tile.dart';
import 'data/antonyms.dart';

void main() => runApp(MaterialApp(
  home: Flashcard(),
));

class Flashcard extends StatefulWidget {
  const Flashcard({Key? key}) : super(key: key);

  @override
  State<Flashcard> createState() => _FlashcardState();
}

class _FlashcardState extends State<Flashcard> {

  List<String> _topics = [];

  @override
  void initState() {
    for(var t in antonyms) {
      if (!_topics.contains(t.topic)) {
        _topics.add(t.topic);
      }
      _topics.sort();
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlashCards'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        ),
      body: CustomScrollView(
              slivers: [
                SliverGrid(delegate: SliverChildBuilderDelegate(
                  childCount: _topics.length,
                (context, index) => TopicTile(topic: _topics[index]),
                ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                )
                )
              ]
            ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label:'Cards',
            backgroundColor: Colors.grey[600], icon: Icon(Icons.numbers),
          ),
          BottomNavigationBarItem(
            label: 'Practice',
            backgroundColor: Colors.grey[600], icon: Icon(Icons.numbers) ,
          ),
        ]
      ),
      );
  }
}



