import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(
      {super.key,
      required this.imageSrc,
      required this.title,
      required this.tobic});

  final String imageSrc;
  final String title;
  final String tobic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  imageSrc,
                ),
                opacity: 1,
              ),
              borderRadius: BorderRadius.circular(3),
            ),
            height: 200,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
          ),
          Text(
            tobic,
            style: const TextStyle(),
            maxLines: 2,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
