import 'package:flutter/material.dart';

class CardNews extends StatelessWidget {
  const CardNews(
      {required this.news,
      required this.imageSrc,
      super.key,
      required this.ontap});
  final String news;
  final String imageSrc;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: NetworkImage(
              imageSrc,
            ),
            opacity: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        width: 200,
        height: 100,
        child: Text(
          news,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
