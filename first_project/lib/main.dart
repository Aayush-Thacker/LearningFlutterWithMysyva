import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Widget Trial',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: const Text('My First Application'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
              'https://picography.co/wp-content/uploads/2022/07/picography-snow-capped-mountain-lake-reflection-768x512.jpg'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Elevated button pressed');
                },
                child: const Text('Button'),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.email),
              ),
              Text(
                'Fancy Text Here',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                ),
              )
            ],
          ),
          Image(image: AssetImage('assets/image.jpg')),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.fromLTRB(2.0, 4.0, 5.0, 2.0),
              color: Colors.grey[300],
              child: const Text('Just a Container'),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.fromLTRB(2.0, 4.0, 5.0, 2.0),
              color: Colors.amber[300],
              child: const Text('Just another Container'),
            ),
          )
        ],
      ),
    );
  }
}
