import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/molecules/custom_avatar.dart';

class ImagePickerWidget extends StatefulWidget {
  final String? imageUrl;
  final void Function(String? imageUrl) onImageSelected;
  const ImagePickerWidget(
      {Key? key, required this.onImageSelected, this.imageUrl})
      : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final _picker = ImagePicker();
  String? imageUrl;
  var isPicked = false;

  @override
  void initState() {
    super.initState();
    imageUrl = widget.imageUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: CustomAvatar(
                radiusSize: 100,
                borderColor: CustomColors.blackOpacity12,
                iconColor: CustomColors.blackOpacity12,
                imageUrl: imageUrl,
                isPicked: isPicked,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: IconButton(
                onPressed: () async {
                  var buffer = await _picker.pickImage(
                    source: ImageSource.gallery,
                  );
                  if (buffer != null) {
                    setState(
                      () {
                        isPicked = true;
                        imageUrl = buffer.path;
                        widget.onImageSelected(imageUrl);
                      },
                    );
                  }
                },
                icon: Icon(
                  Icons.enhance_photo_translate,
                  color: CustomColors.blackOpacity24,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
