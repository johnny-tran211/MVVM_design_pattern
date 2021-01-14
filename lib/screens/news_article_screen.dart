import 'package:cached_network_image/cached_network_image.dart';
import 'package:fileStructure/viewmodels/news_article_list_view_model.dart';
import 'package:fileStructure/widgets/news_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsArticleScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsArticleScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<NewsArticleListViewModel>(context, listen: false)
        .topHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    var listViewModel = Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Test data'),
      ),
      body: NewsGrid(articles: listViewModel.articles,),
    );
  }
}
