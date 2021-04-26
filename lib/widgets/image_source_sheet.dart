import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageSourceSheet extends StatelessWidget {

  final _picker = ImagePicker();

  final Function(File) onImageSelected;
  ImageSourceSheet ({this.onImageSelected});

  void imageSelected(PickedFile image) async {
    if(image != null){
      File croppedImage = await ImageCropper.cropImage(
          sourcePath: image.path,


      );
      onImageSelected(croppedImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        onClosing: (){},
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextButton(onPressed: () async {
              PickedFile image = await _picker.getImage(source: ImageSource.camera);
              imageSelected(image);
              //ImagePicker.pickImage(source: source);
            },
                child: Text("Câmera")
            ),
            TextButton(onPressed: () async {
              PickedFile image = await _picker.getImage(source: ImageSource.gallery);
              imageSelected(image);
              },
                child: Text("Galeria")
            ),
          ],
        ));
  }
}
