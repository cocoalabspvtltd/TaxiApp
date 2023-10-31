import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:new_app/services/image_picker.dart';
import 'package:new_app/utils/exports.dart';

Widget imagecontainer({
  required String st,
  required BuildContext context,
  ImagePickerModel? fileImage,
  FilePickerResult? filedoc,
  String? fileUrl,
}) {
  return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: violetcolor)),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: violetcolor)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.file_upload, color: violetcolor),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(st, style: s3)
                  ],
                ),
              ),
              fileImage?.imagePath != null
                  ? Image.file(
                      File(fileImage!.imagePath!),
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.none,
                    )
                  : fileImage?.imageUrl != null
                      ? Image.network(fileImage?.imageUrl ?? '',
                          fit: BoxFit.cover, filterQuality: FilterQuality.none)
                      : filedoc != null || fileUrl != null
                          ? ColoredBox(
                              color: whiteColor,
                              child: Icon(
                                Icons.picture_as_pdf,
                                size: 40,
                              ),
                            )
                          : const SizedBox(),
            ],
          ),
        ),
      ));
}
