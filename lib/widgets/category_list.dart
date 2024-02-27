import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/category_view.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CardNews(
          news: '',
          imageSrc:
              'https://yt3.googleusercontent.com/KuzjC-19PA7AeblvdaER34WXYQbUq6ex55KfMHMTF9qGN6WdKmbEnDy1VBIvqJVoIFAh0ytpMA=s900-c-k-c0x00ffffff-no-rj',
          ontap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const CategoryView(
                    category: 'general',
                  );
                },
              ),
            );
          },
        ),
        CardNews(
          news: 'Sports news',
          imageSrc:
              'https://media.istockphoto.com/id/949190756/photo/various-sport-equipments-on-grass.jpg?s=612x612&w=0&k=20&c=s0Lz_k0Vq_9P6JBETBMtLsK0lSKEHg4Tnqz9KlRCSHA=',
          ontap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const CategoryView(
                    category: 'sports',
                  );
                },
              ),
            );
          },
        ),
        CardNews(
          news: 'Tech news',
          imageSrc:
              'https://www.ieee.org/content/dam/ieee-org/ieee/web/org/homecarousel/whats-happening/circuit-in-blue.jpg',
          ontap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const CategoryView(
                    category: 'technology',
                  );
                },
              ),
            );
          },
        ),
        CardNews(
          news: '',
          imageSrc:
              'https://lh3.googleusercontent.com/proxy/32aW0l-ie7Wgi80TezYYketcmqIbytZFgDQ3IywZA1zHqMee3oWqHTntqy12bZLtiJnYcJyM_hlaUf1PmU5AhUhJXuWCQ9TdGIJOFHSQnyyqZvpn85_nSg',
          ontap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const CategoryView(
                    category: 'business',
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
