import 'package:new_app/utils/exports.dart';

Future imagePopup(BuildContext context,
    {Function()? onCamera, Function()? onGallery}) async {
  return showModalBottomSheet(
    context: context,
    builder: (context) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
            leading: Icon(Icons.camera_alt, color: violetcolor),
            title: Text('Camera'),
            onTap: () {
              if (onCamera != null) onCamera();
              Navigator.of(context).pop();
            }),
        ListTile(
            leading: Icon(Icons.image, color: violetcolor),
            title: Text('Gallery'),
            onTap: () {
              if (onGallery != null) onGallery();
              Navigator.of(context).pop();
            })
      ],
    ),
  );
}
