import 'package:new_app/utils/exports.dart';

Widget serachField({
  required String st,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
        height: 35,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: whiteColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(st, style: s3),
              const Icon(Icons.search, color: blackColor, size: 20),
            ],
          ),
        )),
  );
}
