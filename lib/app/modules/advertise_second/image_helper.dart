import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageHelper {
  ImageHelper({ImagePicker? imagePicker})
      : _imagePicker = imagePicker ?? ImagePicker();

  final ImagePicker _imagePicker;

  Future<List<XFile>> pickImage({
    ImageSource source = ImageSource.gallery,
    int imageQuality = 85,
  }) async {
    List<XFile> items = [];
    await Get.defaultDialog(
      content: Column(
        children: [
          IconButton(
              onPressed: () async {
                items = await _imagePicker.pickMultiImage(
                    imageQuality: imageQuality);
              },
              icon: Icon(Icons.browse_gallery)),
          IconButton(
              onPressed: () async {
                var image = await _imagePicker.pickImage(
                  source: ImageSource.camera,
                  imageQuality: imageQuality,
                );
                if (image != null) {
                  items.add(image);
                }
              },
              icon: Icon(Icons.camera)),
        ],
      ),
    );
    return items;
  }
}
