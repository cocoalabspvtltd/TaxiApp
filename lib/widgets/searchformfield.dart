import 'package:new_app/utils/exports.dart';

Widget searchFormField({
  required String st,
  IconData? icon,
  Function()? onTap,
  bool readOnly = false,
  TextInputType? keyboardType,
  TextEditingController? controller,
}) {
  return SizedBox(
    height: 35,
    width: double.infinity,
    child: TextFormField(
      onTap: onTap,
      readOnly: readOnly,
      controller: controller,
      cursorColor: greyColor,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        prefixIcon: icon == null ? null : Icon(icon),
        hintText: st,
        hintStyle: const TextStyle(color: greyColor, fontSize: 13),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: greyColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: greyColor)),
        fillColor: greyColor,
      ),
      style: s3,
    ),
  );
}
