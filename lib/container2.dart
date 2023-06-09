
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class container2 extends StatelessWidget {
  const container2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: [
          Container(
            height: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.shopify.com/s/files/1/0631/7978/4450/files/nourish-vegan-food-delivery-catering-houston-organic-carrots-health-benefits-cg_480x480.jpg?v=1675702723"),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.verywellfit.com/thmb/7Dgt_aY6akNf7i1kAGGFquWCvhk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/cabbage_annotated2-3925d776bc114c0f95d7b81e9d82db96.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.momsknowbest.in/hubfs/Food-Artical-28.jpg"),
                    fit: BoxFit.cover)),
          )
        ],
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlayCurve: Curves.easeInExpo,
          autoPlayAnimationDuration:
              const Duration(seconds: 2),
        ),
      ),
    );
  }
}

