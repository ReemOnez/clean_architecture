import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MediaPickerScreen extends StatefulWidget {
  const MediaPickerScreen({Key? key}) : super(key: key);

  @override
  State<MediaPickerScreen> createState() => _MediaPickerScreenState();
}

class _MediaPickerScreenState extends State<MediaPickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  File _video;
                  final picker = ImagePicker();

// This funcion will helps you to pick a Video File
                  XFile? pickedFile = await picker.pickVideo(source: ImageSource.gallery);
                  _video = File(pickedFile!.path);
                  // _videoPlayerController = VideoPlayerController.file(_video)
                  //   ..initialize().then((_) {
                  //     setState(() {});
                  //     _videoPlayerController.play();
                  //   });
                },
                child: const Text('Gallery')),
            ElevatedButton(onPressed: () {}, child: const Text('Camera')),
          ],
        ),
      ),
    );
  }
}
