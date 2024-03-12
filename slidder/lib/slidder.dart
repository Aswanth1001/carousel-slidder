import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slidder extends StatefulWidget {
  const slidder({super.key});

  @override
  State<slidder> createState() => _slidderState();
}

class _slidderState extends State<slidder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                                "images/christoph-schulz-7tb-b37yHx4-unsplash.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                                "images/sabrina-mazzeo-g-krQzQo9mI-unsplash.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                                "images/redd-f-rjfOdiB7k-E-unsplash.jpg"),
                            fit: BoxFit.cover)),
                  )
                ],
                options: CarouselOptions(
                  height: 600,
                  aspectRatio: 16 / 9,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              "Carousel Slidder",
              style: TextStyle(fontSize: 20),
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Colors.grey,
              endIndent: 100,
              indent: 100,
            )
          ],
        ),
      ),
    );
  }
}
