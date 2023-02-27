import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class CardProgramas extends StatelessWidget {
  const CardProgramas({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: 
        [          
          CarouselSlider(
             items: const[
              Center(child: FadeInImage(image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
                                        placeholder: AssetImage('assets/jar-loading.gif')))
             ],
             options: CarouselOptions(
                height: 400,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: null,
                scrollDirection: Axis.horizontal,
             )
          )          
        ],
      )
    );
  }
}


