import 'package:flutter/material.dart';
import 'package:demo_app_2/widgets/mydrawer.widget.dart';

class GalleryPage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/IMG_1.JPG',
    'assets/images/IMG_2.PNG',
    'assets/images/IMG_3.JPG',
    'assets/images/IMG_4.jpg',
    'assets/images/IMG_6.jpeg',
    'assets/images/IMG_7.jpeg',
    'assets/images/IMG_8.jpeg',
    'assets/images/IMG_9.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: const Text("Gallery")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imagePaths.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => FullScreenImage(imagePath: imagePaths[index]),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imagePath;

  const FullScreenImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Center(
        child: Hero(
          tag: imagePath,
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}
