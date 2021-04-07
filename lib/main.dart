import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.grey[700],
              pinned: true,
              expandedHeight: 400,
              stretchTriggerOffset: 100,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [
                  StretchMode.zoomBackground,
                  StretchMode.fadeTitle,
                  StretchMode.blurBackground,
                ],
                title: Text(
                  'Flex title',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      'https://st2.depositphotos.com/3649089/11480/i/950/depositphotos_114807534-stock-photo-spartan-warrior-helmet.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    child: Center(
                      child: Text(
                        'What is Lorem Ipsum?',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white38,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white38,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white38,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
