import 'package:new_app/utils/exports.dart';

Widget Loginformfield(
    {required BuildContext context,
    required String st,
    required bool obsure,
    required bool showIcon,
    required TextEditingController controller,
    Icon? icon,
    bool? showPreFixIcon,
    required bool readonly,
    required Function ontap,
    int maxline = 1}) {
  return Center(
      child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      controller: controller,
      keyboardType: TextInputType.multiline,
      obscureText: obsure,
      autofocus: true,
      cursorColor: violetcolor,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () => ontap(),
            icon: (showIcon && !obsure)
                ? const Icon(Icons.visibility, color: greyColor)
                : (showIcon && obsure)
                    ? const Icon(Icons.visibility_off, color: greyColor)
                    : const SizedBox()),
        hintText: st,
        hintStyle: s3,
        // focusedBorder: const OutlineInputBorder(
        //     borderSide: BorderSide(color: whiteColor)),
        // enabledBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(color: whiteColor),
        // ),
        // fillColor: whiteColor,
        prefixIcon: icon,
      ),
      readOnly: readonly,
      onTap: () => ontap(),
      style: s3,
    ),
  ));
}
