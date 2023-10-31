import 'package:new_app/utils/exports.dart';

PreferredSizeWidget appBars({
  required String text,
  Function? onpressed,
  bool? centertitle,
  List<Widget>? actions,
}) {
  return AppBar(
    leading: IconButton(
        onPressed: () => onpressed == null ? Get.back() : onpressed(),
        icon: const Icon(Icons.arrow_back, size: iconSize),
        color: whiteColor),
    elevation: 0,
    centerTitle: centertitle,
    title: Text(text,
        style: const TextStyle(
            color: whiteColor, fontSize: 18, fontWeight: FontWeight.bold)),
    backgroundColor: violetcolor,
    actions: actions,
  );
}
