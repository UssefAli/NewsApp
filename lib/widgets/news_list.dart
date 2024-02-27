import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'news_card.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.artic});
  final List<Article> artic;
  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: artic.map((e) {
        return NewsCard(
          imageSrc: e.image ??
              'https://static.vecteezy.com/system/resources/thumbnails/004/141/669/small/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg',
          title: e.title ?? 'no title here',
          tobic: e.subTitle ?? 'no subtitle',
        );
      }).toList(),
    );
  }
}
//SliverList.builder(
//   itemCount: artic.length,
//   itemBuilder: (context, index) {
//     return NewsCard(
//         imageSrc: artic[index].image ??
//             'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt0cc9a373e193c0fa/60dd4d5f47339c0fc0224c4d/c1ce2c1227e9709c899a23c16cb7e62290ceb389.jpg?auto=webp&format=pjpg&width=3840&quality=60',
//         title: artic[index].title ?? 'no title here',
//         tobic: artic[index].subTitle ?? 'no subtitle here');
//   },
// );