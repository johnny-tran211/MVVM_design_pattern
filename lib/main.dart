import 'package:fileStructure/screens/news_article_screen.dart';
import 'package:fileStructure/viewmodels/news_article_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "File Structure",
      theme: ThemeData(),
      home: MultiProvider(providers: [
          ChangeNotifierProvider(
            create: (_) => NewsArticleListViewModel(),
          )
        ],
       child: NewsArticleScreen(),
      )
    );
  }
}
