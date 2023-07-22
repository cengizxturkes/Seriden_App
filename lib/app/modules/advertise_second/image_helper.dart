import 'package:image_picker/image_picker.dart';

class ImageHelper {
  ImageHelper({ImagePicker? imagePicker})
      : _imagePicker = imagePicker ?? ImagePicker();

  final ImagePicker _imagePicker;

  Future<List<XFile>> pickImage({
    ImageSource source = ImageSource.gallery,
    int imageQuality = 85,
  }) async {
    return await _imagePicker.pickMultiImage(imageQuality: imageQuality);
  }
}
