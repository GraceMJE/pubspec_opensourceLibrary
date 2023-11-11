import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// pub.dev에서 활용할 library가져오기

void main() {
  runApp(MaterialApp) {
    home: Scaffold(),
    body: Body(),
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return RandomWords();
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    // random한 word 5개를 가지고 와서 list로 변경시킴
    final wordList = generateWordPairs().take(5).toList(); //English words자연스럽게 import 됨

    // List를 통해서 Textwidget 만들기
    final widgets = wordList.map(
            (word) => Text(word.asCamelCase,
                      style: const TextStyle(fontSize: 32),)).toList();

    // 만든 Textwidget을 column안에 넣기
    return Column(
      children: widgets,
    );
  }
}

