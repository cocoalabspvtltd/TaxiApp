import 'package:new_app/utils/exports.dart';

Widget Formfield(
    {required BuildContext context,
    required String st,
    required String label,
    bool obsure = false,
    required bool showIcon,
    required TextEditingController controller,
    Icon? icon,
    bool? showPreFixIcon,
    required bool readonly,
    required Function ontap,
    List<TextInputFormatter>? inputFormaters,
    int maxline = 1}) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: s6),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(15)),
          height: textFieldHeight,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Center(
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                controller: controller,
                keyboardType: TextInputType.multiline,
                obscureText: obsure,
                autofocus: true,
                cursorColor: violetcolor,
                inputFormatters: inputFormaters,
                decoration: InputDecoration(
                  hintText: st,
                  hintStyle: s3,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: whiteColor)),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: whiteColor),
                  ),
                  fillColor: whiteColor,
                  prefixIcon: icon,
                ),
                readOnly: readonly,
                onTap: () => ontap(),
                style: s3,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

InputDecoration textFieldDecoration({IconData? icon, required String st}) {
  return InputDecoration(
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
  );
}
