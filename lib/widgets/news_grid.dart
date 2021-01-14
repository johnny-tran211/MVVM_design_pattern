import 'package:cached_network_image/cached_network_image.dart';
import 'package:fileStructure/viewmodels/news_article_view_model.dart';
import 'package:fileStructure/widgets/circle_image.dart';
import 'package:flutter/material.dart';

class NewsGrid extends StatelessWidget {
  final List<NewsArticleViewModel> articles;

  NewsGrid({this.articles});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        var article = articles[index];
        return GridTile(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: CircleImage(imageUrl: article.imageUrl,),
          ),
          footer: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              article.title,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
      },
      itemCount: this.articles.length,
    );
  }
}
