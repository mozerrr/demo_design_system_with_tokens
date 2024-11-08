import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class ImageFromFirebase extends StatelessWidget {
  final String imageUrl;

  const ImageFromFirebase({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: getImageUrl(imageUrl),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        if (snapshot.hasError || !snapshot.hasData || snapshot.data!.isEmpty) {
          return Text("Error loading image");
        }
        return Image.network(snapshot.data!);
      },
    );
  }
}

Future<String> getImageUrl(String filePath) async {
  try {
    final ref = FirebaseStorage.instance.ref().child(filePath);
    final url = await ref.getDownloadURL();
    return url;
  } catch (e) {
    print("Error: $e");
    return '';
  }
}