import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'FittedBox Widget';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            ImageWidget(
                'https://images.unsplash.com/photo-1518098268026-4e89f1a2cd8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1268&q=80'),
            ImageWidget(
                'https://images.unsplash.com/photo-1504217051514-96afa06398be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
            ImageWidget(
                'https://images.unsplash.com/photo-1442508748335-fde9c3f58fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMjU4fQ&auto=format&fit=crop&w=966&q=80'),
          ]
              .map((image) => Container(
                    height: 250,
                    child: FittedBox(
                      alignment: Alignment.topLeft,
                      fit: BoxFit.cover,
                      child: image,
                    ),
                  ))
              .toList(),
        ),
      );
}

class ImageWidget extends StatelessWidget {
  final String urlImage;

  const ImageWidget(this.urlImage);

  @override
  Widget build(BuildContext context) => Image.network(urlImage);
}
