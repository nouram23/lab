import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Slider'),
        ),
        body: Container(
            child: Column(
          children: [
            ImageSlideshow(
              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 300,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: Colors.blue,

              /// The color to paint behind th indicator.
              indicatorBackgroundColor: Colors.grey,

              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: [
                Image.asset(
                  'img/2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'img/3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'img/1.jpg',
                  fit: BoxFit.cover,
                ),
              ],

              /// Called whenever the page in the center of the viewport changes.

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 3000,

              /// Loops back to first slide.
              isLoop: true,
            ),
          Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              )
            ),
            child:    Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.only(bottom :10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Center(
                          child: Text("Strawberry Pavlova"),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: Center(
                            child: Expanded(
                              child: Text(
                                  "Pawlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream."),
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text("170 reviews"),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.preview_sharp),
                                Text("PREP:"),
                                Text("25 min")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.coffee_outlined),
                                Text("COOK:"),
                                Text("1 hr")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.feed_outlined),
                                Text("FEEDS:"),
                                Text("4-6")
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8.0),
                   child: 
                      Image.asset(
                        'img/4.jpg',
                        fit: BoxFit.cover,
                      ),
                    
                  
                  )
                )
              ],
            ),
          )
          ],
        ),
        ),
      ),
    );
  }
}
