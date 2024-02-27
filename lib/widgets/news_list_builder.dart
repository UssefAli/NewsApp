import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/news_service.dart';
import 'package:news_app/widgets/news_list.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key, required this.catgory});
  final String catgory;
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewService(Dio()).getNews(category: widget.catgory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsList(artic: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops there is an error ,try later'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 200),
                  CircularProgressIndicator(),
                ],
              ),
            );
          }
        });
  }
}


//isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Column(
    //           children: [
    //             SizedBox(height: 200),
    //             CircularProgressIndicator(),
    //           ],
    //         ),
    //       )
    //     : artic.isNotEmpty
    //         ? NewsList(artic: artic)
    //         : const SliverToBoxAdapter(
    //             child: Text('oops there is an error ,try later'),
    //           )
////////////////////////////
// List<Article> artic = [];    fo stateful widget
  // Future<void> getNews() async {
  //   NewService news = NewService(Dio());
  //   artic = await news.getNews();
  //   isLoading = false;
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getNews();
  // }
